/**
 * Example: Native Components in React Native
 */
'use strict';

var React = require('react-native');
var {
  AppRegistry,
  StyleSheet,
  Text,
  View
} = React;

var createReactIOSNativeComponentClass = require('createReactIOSNativeComponentClass');

var MyCustomView = createReactIOSNativeComponentClass({
  validAttributes: {isRed: true},
  uiViewClassName: 'MyCustomView',
})

var demo = React.createClass({
  render: function() {
    return (
      <View style={styles.container}>
        <Text>
          Red one
        </Text>
        <MyCustomView style={{width: 10, height: 10}} isRed={true}/>
        <Text>
          Not red one
        </Text>
        <MyCustomView style={{width: 10, height: 10}} isRed={false}/>
      </View>
    );
  }
});

var styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#F5FCFF',
  },
  customView: {
    width: 10,
    height: 10
  }
});

AppRegistry.registerComponent('demo', () => demo);
