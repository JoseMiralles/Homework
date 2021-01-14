const state =
{

    entities: {

        users: {
            1: {
                id: 1,
                username: "Luchentio",
            },
            21: {
                id: 21,
                username: "ILikeCats",
            }
        },

        runs: {
            1: {
                id: 1,
                run: [ [2131412,12312412], [12312312, 123123123], [123123123, 123123123] ],
                created: new Date(),
                time: 10800,
                miles: 3.4,
                runner_id: 1,
                location: "Phoenix, AZ"
            },
        },

        comments: {
            34: {
                id: 34,
                body: "Nice route.",
                commenter_id: 21,
                run_id: 2,
                created_at: new Date()
            }
        },

        cheers: {
            56: {
                id: 56,
                cheerer_id: 21,
                run_id: 1 
            }
        }
        
    },

    session: { currentUserId: 21 },

    ui: {
        loading: false,
        modal: false
    },

    errors: {
        login: ["Invalid credentials!"],
        runView: ["You cannot cheer your own run."]
    }

}