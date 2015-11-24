json.id @task.id.to_s
json.title @task.title
json.description @task.description
json.attachment @task.attachment
json.course_title @task.course.title
json.opened_date @task.opened_date
json.delivery_date @task.delivery_date
json.answers @task.answers.where(user: @user)