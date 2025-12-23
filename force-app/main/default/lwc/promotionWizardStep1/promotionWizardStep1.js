import { LightningElement, api } from 'lwc';

/** TODO FOR THE CHALLENGE: import the state manager, and the context modules */
import stateManager from 'c/promotionStateManager';
export default class PromotionWizardStep1 extends LightningElement {
    
    /** TODO FOR THE CHALLENGE: initialize/inherit the state from the parent */
    promotionState = stateManager;
    promotionName;

    connectedCallback(){
        this.promotionName = this.promotionState?.value?.promotionName;
    }

    handleChange(event) {
        this.promotionName = event.detail.value;
    }

    @api
    allValid(){
        if(this.promotionName === undefined || this.promotionName === ''){
            return false;
        }
        
        // TODO FOR THE CHALLENGE: Update the promotion name in the state
        this.promotionState.saveStepData(1,{promotionName:this.promotionName});
        return true;
    }
}