json.id @task.id.to_s
json.title @task.title
json.course_title @task.course.title 
json.status @task.status
json.delivery_date @task.delivery_date
json.description @task.description
json.attachment @task.attachment
