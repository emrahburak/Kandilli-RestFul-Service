import logging



LOG_FORMAT = "%(levelname)s %(asctime)s - %(message)s"

logging.basicConfig(
    level=logging.DEBUG,
    format=LOG_FORMAT,
)

logger = logging.getLogger()

def log_error(err):
    global logger
    if err != None:
        return logger.error(err)


def log_debug(err):
    global logger
    if err != None:
        return logger.info(err)


if __name__ == '__main__':
    log_error('TEST:Something went wrong')
