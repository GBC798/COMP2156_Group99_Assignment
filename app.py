import traceback


def calculate_percentage(number, percentage):
    """ Calculates the percentage of the number given.
                    :param number: Double or int numeric value
                    :param percentage: Double or int numeric value between 0-100
                    :return: Calculated percentage
            """
    try:
        return number * percentage / 100
    except Exception as e:
        print(e)
        return traceback.format_exc()