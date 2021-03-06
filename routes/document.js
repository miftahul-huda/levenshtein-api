const CrudRouter = require("./crudrouter");

class DocumentRouter extends CrudRouter{

    static getRouter(logic)
    {
        let router = super.getRouter(logic);
        router.get("/setsession", (req, res)=>{
            req.session.organization_code = "DEVOTEAM";
            res.send(req.session);
        })

        return router;
    }

    static init(req, res)
    {
        if(req.session.organization_code == null)
            req.session.organization_code = "DEVOTEAM";
    }
}

module.exports = DocumentRouter;