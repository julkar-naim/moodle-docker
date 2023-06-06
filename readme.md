# Moodle Docker

This project aims to simplify the setup process for Moodle development environments by providing a Dockerized approach to running Moodle.

## Requirements

To use this project, you will need the following installed on your machine:

- Docker Engine
- Docker Compose

## Usage

Clone the repo

<pre>
$ git clone https://github.com/julkar-naim/moodle-docker.git
</pre>

Pull the docker image for moodle

<pre>
$ docker pull julkar-naim/moodle-docker
</pre>

Or build it yourself

<pre>
$ cd moodle-docker
$ docker build -t julkar-naim/moodle-docker:4.2 .
</pre>

Now copy config file and docker compose file to the project directory

<pre>
$ cp config.php MOODLE_PROJECT_DIR
$ cp docker-compose.yml MOODLE_PROJECT_DIR
</pre>

Go to the moodle project directory and run docker compose file

<pre>
$ docker compose up -d
</pre>

Go to http://localhost:8000

moodle dev environment should be up and running


## Contributing

If you find any issues or have suggestions for improvements, please feel free to open an issue or submit a pull request.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more information.
