//
// Copyright (c) 2021 Related Code - https://relatedcode.com
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

import Foundation
import GraphQLite

//-----------------------------------------------------------------------------------------------------------------------------------------------
var gqldb: GQLDatabase!


//-----------------------------------------------------------------------------------------------------------------------------------------------
class GraphQLite: NSObject {

	//-------------------------------------------------------------------------------------------------------------------------------------------
	static let shared = GraphQLite()

	//-------------------------------------------------------------------------------------------------------------------------------------------
	class func setup() {

		shared.initDatabase()
		shared.initServer()
	}

	//-------------------------------------------------------------------------------------------------------------------------------------------
	private func initDatabase() {

		gqldb = GQLDatabase()
	}

	//-------------------------------------------------------------------------------------------------------------------------------------------
	private func initServer() {

		#warning("Please add your Yelp API details below.")
		let token = "..."

		let link = "https://api.yelp.com/v3/graphql"
		let headers = ["Authorization": "Bearer " + token, "Accept-Language": "en-US"]

		let server = GQLServer(HTTP: link, headers: headers)

		ServerData.setup(server)
	}
}
