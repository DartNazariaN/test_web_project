package ua.com.nrn.dao

import org.springframework.beans.factory.annotation.Autowired
import spock.lang.Specification
import ua.com.nrn.entity.User


class UserDaoTest extends Specification {

    @Autowired
    UserDao userDao

    def 'exercise dao'() {
        given: 'sut'
        def sut = userDao

        and: 'user'
        def user= new User( username: 'Hero', password: 'Superman' )

        when: ''
        sut.save(user)

        then: ''
        true
    }
}
