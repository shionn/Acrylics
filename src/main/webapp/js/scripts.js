
function $(obj) {
	if (typeof obj === "function") {
		return document.addEventListener("DOMContentLoaded", obj);
	}
}
