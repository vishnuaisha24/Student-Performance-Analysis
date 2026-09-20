import pandas as pd

data = pd.read_csv("student_data.csv")

data["Average"] = data[["Maths", "Science", "English"]].mean(axis=1)

def get_performance(average):
    if average >= 85:
        return "Excellent"
    elif average >= 70:
        return "Good"
    elif average >= 50:
        return "Average"
    else:
        return "Poor"

data["Performance"] = data["Average"].apply(get_performance)

print("\nStudent Performance Analysis")
print(data)

print("\nHighest Average:", data["Average"].max())
print("Lowest Average:", data["Average"].min())
print("Class Average:", round(data["Average"].mean(), 2))
print("Average Attendance:", round(data["Attendance"].mean(), 2))
