from fastapi import FastAPI

app = FastAPI()
@app.get("/healthz", status_code=200)
async def home():
   return "200 OK"