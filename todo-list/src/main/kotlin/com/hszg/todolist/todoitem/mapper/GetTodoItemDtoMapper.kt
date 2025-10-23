package com.hszg.todolist.todoitem.mapper

import com.hszg.todolist.todoitem.TodoItem
import com.hszg.todolist.todoitem.dtos.GetTodoItemDto

fun toGetTodoItemDto(todoItem: TodoItem): GetTodoItemDto {
    return GetTodoItemDto(
        id = todoItem.id!!,
        name = todoItem.name,
        description = todoItem.description,
        done = todoItem.done,
        created = todoItem.created,
        shouldBeDoneBy = todoItem.shouldBeDoneBy,
        userId = todoItem.user.id!!
    )
}