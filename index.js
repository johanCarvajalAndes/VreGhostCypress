const playwright = require("playwright");
const compareImages = require("resemblejs/compareImages");
const config = require("./config.json");
const fs = require("fs");

const { scenarios, options, rutaV1, rutaV2 } = config;

async function executeTest() {
  if (scenarios.length === 0) {
    return;
  }
  let resultInfo = [];
  let datetime = new Date().toISOString().replace(/:/g, ".");

  if (!fs.existsSync(`./results/${datetime}`)) {
    fs.mkdirSync(`./results/${datetime}`, { recursive: true });
  }
  for (escenario of scenarios) {
    if (!fs.existsSync(`./results/${datetime}/${escenario}`)) {
      await fs.mkdirSync(`./results/${datetime}/${escenario}`, {
        recursive: true,
      });
    }
    console.log(escenario);
    await fs.readdirSync(rutaV1 + "/" + escenario).forEach(async (file) => {
      if (fs.existsSync(`${rutaV2}/${escenario}/${file}`)) {
        //file exists
        //  console.log(file,escenario);
        //Compare image
        const data = await compareImages(
          fs.readFileSync(`./${rutaV1}/${escenario}/${file}`),
          fs.readFileSync(`./${rutaV2}/${escenario}/${file}`),
          options
        );
        // console.log(data.misMatchPercentage);
        //resultInfo
        resultInfo.push( {
          isSameDimensions: data.isSameDimensions,
          dimensionDifference: data.dimensionDifference,
          rawMisMatchPercentage: data.rawMisMatchPercentage,
          misMatchPercentage: data.misMatchPercentage,
          diffBounds: data.diffBounds,
          analysisTime: data.analysisTime,
          rutefileV1: `${rutaV1}/${escenario}/${file}`,
          rutefileV2: `${rutaV1}/${escenario}/${file}`,
          resultInfoVR: `results/${datetime}/${escenario}/compare-${file}`,
          scenario: escenario,
        });
        //console.log(resultInfo);
        await fs.writeFileSync(
          `./results/${datetime}/${escenario}/compare-${file}`,
          data.getBuffer()
        );
        console.log(`./results/${datetime}/${escenario}/compare-${file}`);
      }
    });
  }
  
  await fs.writeFileSync(`report.html`, createReport(datetime, resultInfo));

  console.log(
    "------------------------------------------------------------------------------------"
  );
  console.log("Execution finished. Check the report under the results folder");
  return resultInfo;
}

(async () => console.log(await executeTest()))();

function browser(b,datetime) {
  return `<div class=" browser" id="test0">
    <div class=" btitle">
        <h2>Comparacion Fecha:${datetime} </h2>
        <p>Data: ${JSON.stringify(b)}</p>
    </div>
    <div class="imgline">
      <div class="imgcontainer">
        <span class="imgname">Ghost 3.0.0</span>
        <img class="img2" src="${b.rutefileV1}" id="refImage" label="Reference">
      </div>
      <div class="imgcontainer">
        <span class="imgname">Ghost 3.42.5</span>
        <img class="img2" src="${b.rutefileV2}" id="testImage" label="Test">
      </div>
    </div>
    <div class="imgline">
      <div class="imgcontainer">
        <span class="imgname">Diff</span>
        <img class="imgfull" src="${
          b.resultInfoVR
        }" id="diffImage" label="Diff">
      </div>
    </div>
  </div>`;
}

function createReport(datetime, resInfo) {
  return `
    <html>
        <head>
            <title> VRT Report </title>
            <link href="index.css" type="text/css" rel="stylesheet">
        </head>
        <body>
            <h1>Report for 
            <a href="${config.url}"> Ghost 3.3.0 vs Ghost 3.42.5</a>
            </h1>
            <p>Executed: ${datetime}</p>
            <div id="visualizer">
                ${resInfo.map((b) => browser(b,datetime))}
            </div>
        </body>
    </html>`;
}
