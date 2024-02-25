import requests as r
from pprint import pprint
import json

API_key = "2b10M743DWtFEfDHNLRV8WBKHO"
project= "all"
api_endpoint_url =  f"https://my-api.plantnet.org/v2/identify/{project}?api-key={API_key}"

parts = {
	#"organs" : ["leaf", "bark"]
	"organs" : ["leaf", "bark", "flower", "fruit", "auto"]
}
image_path_1 = "/Users/sanjana/Documents/carrotLeaf.jpeg"
image_data_1 = open(image_path_1, 'rb').read()

image_path_4 = "/Users/sanjana/Documents/carrotBark.jpeg"
image_data_4 = open(image_path_4, 'rb').read()


#parts.get("organs")

#parts.append("flower")
image_path_2 = "/Users/sanjana/Documents/carrotFlowers.jpeg"
image_data_2 = open(image_path_2, 'rb').read()

#parts.append("fruit")
image_path_3 = "/Users/sanjana/Documents/carrotFruit.jpeg"
image_data_3 = open(image_path_3, 'rb').read()

#parts.append("other")
image_path_5 = "/Users/sanjana/Documents/carrotRoot.jpeg"
image_data_5 = open(image_path_5, 'rb').read()

image_files = [
("images",(image_path_1, image_data_1)),
("images", (image_path_2, image_data_2)),
("images", (image_path_3, image_data_3)),
("images", (image_path_4, image_data_4)),
("images", (image_path_5, image_data_5))
]

send_data = r.Request('POST', url = api_endpoint_url, files = image_files, data = parts)
if(send_data == 200):
	prepared_data = send_data.prepare()

	current_session = r.Session()
	response = current_session.send(prepared_data)
	json_format_result = json.loads(response.text)

	#pprint(json_format_result)

	plant_identified = json_format_result["bestMatch"]
	return plant_identified
else:
	return None
