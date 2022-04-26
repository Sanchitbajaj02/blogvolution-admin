import React from "react";

const Footer = () => {
  return (
    <React.Fragment>
      <footer id="footer">
        <div className="copyrights">
          <p style={{ fontFamily: `Nova Cut, cursive` }}>
            Copywright @{new Date().getFullYear()} | Health &amp; Fitness
          </p>
        </div>
      </footer>
    </React.Fragment>
  );
};

export default Footer;
