package com.hszg.todolist.users

import com.hszg.todolist.users.dtos.CreateUserDto
import com.hszg.todolist.users.dtos.GetUserDto
import com.hszg.todolist.users.dtos.UpdateUserDto
import org.springframework.http.HttpStatus
import org.springframework.web.bind.annotation.DeleteMapping
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.PathVariable
import org.springframework.web.bind.annotation.PostMapping
import org.springframework.web.bind.annotation.PutMapping
import org.springframework.web.bind.annotation.RequestBody
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RequestParam
import org.springframework.web.bind.annotation.ResponseStatus
import org.springframework.web.bind.annotation.RestController

@RestController
@RequestMapping("/users")
class UserController(
    private val userService: UserService
) {

    @GetMapping
    @ResponseStatus(HttpStatus.OK)
    fun getUsers(
        @RequestParam id: Long?,
        @RequestParam username: String?
    ): List<GetUserDto> {
        return userService.getUsers(id, username)
    }

    @PostMapping
    @ResponseStatus(HttpStatus.CREATED)
    fun createUser(
        @RequestBody createUserDto: CreateUserDto
    ): GetUserDto {
        return userService.createUser(createUserDto)
    }

    @PutMapping("/{id}")
    @ResponseStatus(HttpStatus.OK)
    fun updateUser(
        @PathVariable id: Long,
        @RequestBody updateUserDto: UpdateUserDto
    ): GetUserDto {
        return userService.updateUser(id, updateUserDto)
    }

    @DeleteMapping("/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    fun deleteUser(
        @PathVariable id: Long
    ) {
        userService.deleteUser(id)
    }
}