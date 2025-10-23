package com.hszg.todolist.todoitem.mapper

import com.hszg.todolist.todoitem.TodoItem
import com.hszg.todolist.todoitem.dtos.CreateTodoItemDto
import com.hszg.todolist.users.User

fun fromCreateTodoItemDto(
    createTodoItemDto: CreateTodoItemDto,
    targetUser: User
): TodoItem {
    return TodoItem(
        name = createTodoItemDto.name,
        description = createTodoItemDto.description,
        done = createTodoItemDto.done,
        created = createTodoItemDto.created,
        shouldBeDoneBy = createTodoItemDto.shouldBeDoneBy,
        user = targetUser
    )
}