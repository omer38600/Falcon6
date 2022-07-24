import { createElement } from 'lwc';
import LightningRecordEditFormOpp from 'c/lightningRecordEditFormOpp';

describe('c-lightning-record-edit-form-opp', () => {
    afterEach(() => {
        // The jsdom instance is shared across test cases in a single file so reset the DOM
        while (document.body.firstChild) {
            document.body.removeChild(document.body.firstChild);
        }
    });

    it('TODO: test case generated by CLI command, please fill in test logic', () => {
        // Arrange
        const element = createElement('c-lightning-record-edit-form-opp', {
            is: LightningRecordEditFormOpp
        });

        // Act
        document.body.appendChild(element);

        // Assert
        // const div = element.shadowRoot.querySelector('div');
        expect(1).toBe(1);
    });
});