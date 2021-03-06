import React from 'react';

class Headers extends React.Component {
    render () {
        let selectedTab = this.props.selectedTab;
        let tabs = this.props.panes.map((pane, index) => {
            let title = pane.title;
            let klass = 'tab';
            if (index == selectedTab) {
                klass = 'tab active';
            }
            return (
                <li key={index}
                    className={klass}
                    onClick={this.props.onTabChosen.bind(null, index)}>
                    {title}{" "}
                </li>
            );
            
        });

        return (
            <ul className='tab-header'>
                {tabs}
            </ul>
        );
    }
}

class Tabs extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            selectedTab: 0
        };
        this.selectTab = this.selectTab.bind(this);
    }

    selectTab (num) {
        this.setState({ selectedTab: num });
    }

    render () {
        let pane = this.props.panes[this.state.selectedTab];

        return (
            <div className="tab-widget">
                <div className="tabs-container">
                    <Headers
                        selectedTab={this.state.selectedTab}
                        onTabChosen={this.selectTab}
                        panes={this.props.panes} />

                </div>
                <div className="pane-container">
                    <article className="pane-content">
                        {pane.content}
                    </article>
                </div>
            </div>
                    
        );
    }
}

export default Tabs;