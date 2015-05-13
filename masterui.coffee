window.onload = ->
	webix.ui
		rows: [
			{view: "template", type: "header", template: 'Excel like <a href="http://webix.com/demo/datatable/">ref</a>'},
			{
				view: "datatable",
				resizeColumn: true,
				drag: true,
				scroll: 'xy',
				select: 'cell'
				editable: true
				editaction: "dblclick"
				clipboard: 'selection'
				columns: [
					{id: "type", editor: 'text', header: ["Type", {content: 'selectFilter'}]},
					{id: "file", editor: 'text', header: ['File', {content: 'textFilter'}]},
				],
				data: [
					{file: "surface10.png", type: "png with pna"}
					{file: "surface11.png", type: "png with alpha"}
					{file: "surface12.png", type: "png with pna"}
					{file: "surface13.png", type: "png with pna"}
				],
			},
		]
