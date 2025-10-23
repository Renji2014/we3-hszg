package com.hszg.todolist.users

import com.hszg.todolist.users.dtos.CreateUserDto
import com.hszg.todolist.users.dtos.GetUserDto
import com.hszg.todolist.users.dtos.UpdateUserDto
import com.hszg.todolist.users.mappers.fromCreateUserDto
import com.hszg.todolist.users.mappers.fromUpdateUserDto
import com.hszg.todolist.users.mappers.toGetUserDto
import jakarta.persistence.EntityNotFoundException
import jakarta.transaction.Transactional
import org.springframework.stereotype.Service

@Service
class UserService(
    private val userRepository: UserRepository
) {
    fun getUserById(id: Long): User {
        return userRepository.findById(id).orElseThrow {
            EntityNotFoundException(
                "User with id $id could not be found."
            )
        }
    }

    fun getUsers(
        id: Long?,
        username: String?
    ): List<GetUserDto> {
        val retrievedUsers = userRepository.findUserByFields(
            id, username
        )
        return retrievedUsers.map { toGetUserDto(it) }
    }

    fun createUser(
        createUserDto: CreateUserDto
    ): GetUserDto {
        val newUser = fromCreateUserDto(createUserDto)
        val savedUser = userRepository.save(newUser)
        return toGetUserDto(savedUser)
    }

    fun updateUser(
        id: Long,
        updateUserDto: UpdateUserDto
    ): GetUserDto {
        return userRepository.findById(id).map {
            val updatedUser = fromUpdateUserDto(
                it, updateUserDto
            )
            val save = userRepository.save(updatedUser)
            toGetUserDto(save)
        }.orElseGet(null)
    }

    @Transactional
    fun deleteUser(
        id: Long
    ) {
        userRepository.deleteById(id)
    }
}