package objectstructures;

public class Partner {

    private String name;
    private Partner partner;

    public Partner(String name) {
        this.name = name;
    }

    public String getName(){
        return this.name;
    }

    public Partner getPartner(){
        return this.partner;
    }

    public void setPartner(Partner partner){
        if (this.partner == null && partner != null){
            this.assoPartner(partner);
        } else if (this.partner != null && partner != null && this.partner != partner){
            this.separatePartner();
            this.assoPartner(partner);
        } else if (this.partner != null && partner == null){
            this.separatePartner();
        }
    }

    private void assoPartner(Partner partner){
        this.partner = partner;
        partner.setPartner(this);
    }

    private void separatePartner(){
        Partner tempPartner = this.getPartner();
        this.partner = null;
        tempPartner.setPartner(null);
    }


    @Override
    public String toString() {
        if (this.getPartner() != null){
            return this.name + " er partner med " + this.getPartner().getName();
        }
        return this.name + " er singel.";
    }

    public static void  main(String[] args){
        Partner p1 = new Partner("Lars");
        Partner p2 = new Partner("Anne Marte");
        Partner p3 = new Partner("Andre");
        p1.setPartner(p2);
        System.out.println(p1);
        System.out.println(p2);
        System.out.println(p3);
        System.out.println();
        p3.setPartner(p2);
        System.out.println(p1);
        System.out.println(p2);
        System.out.println(p3);
        System.out.println();
        p1.setPartner(null);
        p2.setPartner(null);
        System.out.println(p1);
        System.out.println(p2);
        System.out.println(p3);
        System.out.println();
    }
}
