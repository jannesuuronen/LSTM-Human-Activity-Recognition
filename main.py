import socket
import json
import scipy
import math
from SensorReadings import SensorReadings
import constants
import sliding_windows
import tensorflow as tf
from joblib import load
MODEL = load('logistic_har.joblib')
REMOVE_TAGS = ["accelormeterTimestamp_sinceReboot", "gyroTimestamp_sinceReboot"]
NO_MEASURES = 128
ACC_X = SensorReadings("accelerometerAccelerationX", constants.WINDOW_SIZE)
ACC_Y = SensorReadings("accelerometerAccelerationY", constants.WINDOW_SIZE)
ACC_Z = SensorReadings("accelerometerAccelerationZ", constants.WINDOW_SIZE)
GYRO_X = SensorReadings("gyroRotationX", constants.WINDOW_SIZE)
GYRO_Y = SensorReadings("gyroRotationY", constants.WINDOW_SIZE)
GYRO_Z = SensorReadings("gyroRotationZ", constants.WINDOW_SIZE)
#btswrth_b, btswrth_a = scipy.signal.butter(N=3, Wn=(20/(constants.SAMPL_FREQ/2)), btype='low')
#btswrth_b_2, btswrth_a_2 = scipy.signal.butter(N=3, Wn=(0.3/(constants.SAMPL_FREQ/2)), btype='low')



def start_and_bind_server(host, port):
    sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    sock.bind((host, port))
    sock.listen()
    print("Waiting for connection...")
    conn, addr = sock.accept()
    return conn, addr    

def run_model_inference(measurements):
    pred = 0
    return pred

# def remove_meas_elements(jsonobj):
#     for tag in REMOVE_TAGS:
#         del jsonobj[tag]

def parse_to_json(packet):
    pkt_cont_str = packet.decode("utf-8")
    pkt_json = json.loads(pkt_cont_str)
    return pkt_json

def extract_measurements(packet):
    ACC_X.readings.append(packet["accelerometerAccelerationX"])
    ACC_Y.readings.append(packet["accelerometerAccelerationY"])
    ACC_Z.readings.append(packet["accelerometerAccelerationZ"])
    GYRO_X.readings.append(packet["gyroRotationX"])
    GYRO_Y.readings.append(packet["gyroRotationY"])
    GYRO_Z.readings.append(packet["gyroRotationZ"])
    print(ACC_X.readings, ACC_Y.readings, ACC_Z.readings, GYRO_X.readings, GYRO_Y.readings, GYRO_Z.readings)

# def filter_sequence(window):
#     # apply median filter to reduce noise of window
#     window = scipy.signal.medfilt(window)
#     # apply 3rd order Butterworth Low pass filter with cutoff 30hz 
#     window = scipy.signal.filtfilt(btswrth_b, btswrth_a, window)
#     return window

# def sep_acc_sig(window):
#     # apply another 3rd order Butterworth Low Pass filter with cutoff 0.3hz
#     sig = scipy.signal.filtfilt(btswrth_a_2, btswrth_b_2, window)

# def extract_features(window):
    
#     return

def process_readings():
    #window = sliding_windows.extract_window(constants.WINDOW_SIZE, constants.OVERLAP, ACC_X.readings)
    #window = filter_sequence(window)
    #feature_vector = extract_features(window)

    # window = sliding_windows.extract_window(constants.WINDOW_SIZE, OVERLAP, ACC_Y.readings)
    
    # window = sliding_windows.extract_window(constants.WINDOW_SIZE, OVERLAP, ACC_Z.readings)
    
    # window = sliding_windows.extract_window(constants.WINDOW_SIZE, OVERLAP, GYRO_X.readings)
    
    # window = sliding_windows.extract_window(constants.WINDOW_SIZE, OVERLAP, GYRO_Y.readings)
    
    # window = sliding_windows.extract_window(constants.WINDOW_SIZE, OVERLAP, GYRO_Z.readings)
    return feature_vector

def load_classifier():
    path_to_model_pd = ".\\model\\saved_model.pb"
    
    

def main():
    i = 0
    j = 0
    output_file = open(r"predictions.txt", "a")
    host_ip = '192.168.1.88'      
    port = 7777         
    conn, addr = start_and_bind_server(host_ip, port)
    print("Accepted connection from: ", addr)
    while True:
        packet = conn.recv(1024)
        if not packet:
            break
        
        parsed_packet = parse_to_json(packet)
        extract_measurements(parsed_packet) 
        i = i + 1
        if i == NO_MEASURES: # i = 128
            process_readings()
            j = i
        elif (i == j+math.floor(NO_MEASURES * constants.OVERLAP)): # i = 128+64, (128+64)+64 = 256, (256+64)
            process_readings()
            j = i

        #pred = run_model_inference("")
        #output_file.write("pred")


if __name__ == "__main__":
    main()