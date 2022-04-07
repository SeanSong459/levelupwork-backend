-- INSERT INTO project (Instructions)
-- VALUES (
-- <div class="InstructionWrapper">
--         <div class="InsArrowLeft">
--           <img src="../Images/Student Areas/asset1.png"></img>
--         </div>
--         <div class="InsMiddleWrapper">
--           <div class="InstructionTitle">1. JOIN SCRATCH</div>
--           <div class="InstructionTextWrapper">
--             <div class="InstructionText">
--               if you haven't used Scratch before, you will need to join Scratch
--               first.
--             </div>
--             <div class="InstructionText">
--               Go to https://scratch.mit.edu Click on{" "}
--               <span class="JoinButton">Join Scratch</span>
--             </div>
--           </div>
--           <img
--             src="../Images/Student Areas/Screen Shot 2020-04-25 at 9.10.36 PM.png"
--             alt="*"
--           ></img>
--           <div class="InstructionTextWrapper2">
--             <div class="InstructionText">
--               Follow the instructions to join. You will need a username and a
--               password that you will remember. If possible, you should also
--               verify your email address so that you can Share projects later.
--               Ask your teacher to help with this step if you don't have an email
--               address, or if you are not sure what to do.
--             </div>
--           </div>
--         </div>

--         <div class="InsArrowRight">
--           <img src="../Images/Student Areas/asset2.png"></img>
--         </div>
--       </div>)


UPDATE project
SET Instructions =  '<div class="InstructionWrapper">
        <div class="InsArrowLeft">
          <img src="../Images/Student Areas/asset1.png"></img>
        </div>
        <div class="InsMiddleWrapper">
          <div class="InstructionTitle">1. JOIN SCRATCH</div>
          <div class="InstructionTextWrapper">
            <div class="InstructionText">
              if you haven\'t used Scratch before, you will need to join Scratch
              first.
            </div>
            <div class="InstructionText">
              Go to https://scratch.mit.edu Click on{" "}
              <span class="JoinButton">Join Scratch</span>
            </div>
          </div>
          <img
            src="../Images/Student Areas/Screen Shot 2020-04-25 at 9.10.36 PM.png"
            alt="*"
          ></img>
          <div class="InstructionTextWrapper2">
            <div class="InstructionText">
              Follow the instructions to join. You will need a username and a
              password that you will remember. If possible, you should also
              verify your email address so that you can Share projects later.
              Ask your teacher to help with this step if you don\'t have an email
              address, or if you are not sure what to do.
            </div>
          </div>
        </div>

        <div class="InsArrowRight">
          <img src="../Images/Student Areas/asset2.png"></img>
        </div>
      </div>'
WHERE ProjectID = 1;