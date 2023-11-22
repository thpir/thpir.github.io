<script setup>
    var expanded = false;
    var textbox = document.getElementById("textbox");
    var button = document.getElementById("expandButton");
    function expandTextbox() {
        if (!expanded) {
            textbox.style.height = "auto";
            button.innerText = "Show less";
        } else {
            textbox.style.height = "100px";
            button.innerText = "Show more";
        }
        expanded = !expanded
    }
</script>

<template>
    <div id="projectCard">
        <p id="textbox">
            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.             Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
        </p>
        <button id="expandButton" @click="expandTextbox">Show more</button>
    </div>
</template>

<style scoped>
    #textbox {
        height: 100px;
        overflow: hidden;
    }
    #projectCard {
        width: 400px;
    }
</style>