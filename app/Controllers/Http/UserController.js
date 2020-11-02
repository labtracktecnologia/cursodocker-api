'use strict'

const User = use('App/Models/User')

class UserController {

  async index({ request }) {
    const {page, limit} = request.all()
    return User.query().orderBy('email').paginate(page, limit)
  }

}

module.exports = UserController
