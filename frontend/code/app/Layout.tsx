import React, { ReactElement } from 'react';

import Footer from '../app/Footer';
import Header from '../app/Header';
import Body from '../app/Body';

function Layout(): ReactElement {
  return (
    <>
      <Header />
      <Body />
      <Footer />
    </>
  );
}

export default Layout;
