from fastapi import FastAPI
from fastapi.staticfiles import StaticFiles

from lib import example_library

from models.example_model import ExampleModel


app = FastAPI()
app.mount("/", StaticFiles(directory="static", html=True), name="static")


@app.get("/example_data")
def example_data() -> ExampleModel:
    example_data = example_library.get_example_data()
    return example_data
