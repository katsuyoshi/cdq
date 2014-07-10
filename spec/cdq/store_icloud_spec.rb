module CDQ

  describe "CDQ Store Manager with iCloud" do

    before do
      CDQ.cdq.setup
    end

    after do
      CDQ.cdq.reset!
    end

    it "should be @store" do
      CDQ.cdq.store.should == CDQStoreManager
    end
    
    it "should create store for icloud" do
      should.not.raise do
        @store = CDQ.cdq.store.new(icloud:true, container: "blah").current
      end
      CDQ.cdq.setup(store:@store)
      @store.should == CDQ.cdq.stores.current
    end
    
  end

end
