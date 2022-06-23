FROM python:3

# Define an arbitrary work directory
WORKDIR /pos

# Install requirements
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
# ^This could also be a conda install or pipenv or anything else

# Copy all your shit to the work directory
COPY . .

# Run your thing
#   sidenote: You can override this on the CLI if you want to keep the image running
CMD ["python3", "/pos/app/hello.py"]
