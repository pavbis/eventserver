
SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 2928 (class 0 OID 103357)
-- Dependencies: 204
-- Data for Name: consumerOffsets; Type: TABLE DATA; Schema: public; Owner: root
--

INSERT INTO public."consumerOffsets" ("consumerId", "streamName", "eventName", "offset", "movedAt") VALUES ('52a454e8-a111-4e5c-a715-2e46fedd8c47', 'streamOne', 'ExampleEventOne', 1, '2019-10-30 07:47:57.690832+00');
INSERT INTO public."consumerOffsets" ("consumerId", "streamName", "eventName", "offset", "movedAt") VALUES ('52a454e8-a111-4e5c-a715-2e46fedd8c47', 'streamOne', 'ExampleEventTwo', 2, '2019-10-30 07:47:57.690832+00');
INSERT INTO public."consumerOffsets" ("consumerId", "streamName", "eventName", "offset", "movedAt") VALUES ('52a454e8-a111-4e5c-a715-2e46fedd8c47', 'streamOne', 'ExampleEventThree', 1, '2019-10-30 07:47:57.690832+00');
INSERT INTO public."consumerOffsets" ("consumerId", "streamName", "eventName", "offset", "movedAt") VALUES ('2480b859-e08a-4414-9c7d-003bc1a4b443', 'codello', 'Snickers', 5, '2019-10-30 08:20:17.883918+00');
INSERT INTO public."consumerOffsets" ("consumerId", "streamName", "eventName", "offset", "movedAt") VALUES ('2480b859-e08a-4414-9c7d-003bc1a4b443', 'carl-gross', 'Snickers', 23, '2019-10-30 08:24:40.404935+00');
INSERT INTO public."consumerOffsets" ("consumerId", "streamName", "eventName", "offset", "movedAt") VALUES ('2480b859-e08a-4414-9c7d-003bc1a4b555', 'miracle', 'Snickers', 33, '2019-10-30 08:26:40.535396+00');
INSERT INTO public."consumerOffsets" ("consumerId", "streamName", "eventName", "offset", "movedAt") VALUES ('2480b859-e08a-4414-9c7d-003bc1a4b555', 'mavi', 'Snickers', 44, '2019-10-30 08:29:04.080029+00');
INSERT INTO public."consumerOffsets" ("consumerId", "streamName", "eventName", "offset", "movedAt") VALUES ('2480b859-e08a-4414-9c7d-003bc1a4b222', 'maerz', 'Snickers', 55, '2019-10-30 08:34:37.495672+00');
INSERT INTO public."consumerOffsets" ("consumerId", "streamName", "eventName", "offset", "movedAt") VALUES ('2480b859-e08a-4414-9c7d-003bc1a4b221', 'sandwich', 'Snickers', 120, '2019-10-30 08:39:38.895661+00');
INSERT INTO public."consumerOffsets" ("consumerId", "streamName", "eventName", "offset", "movedAt") VALUES ('2480b859-e08a-4414-9c7d-003bc1a4b221', 'hatico', 'Snickers', 44, '2019-10-30 08:54:24.304807+00');
INSERT INTO public."consumerOffsets" ("consumerId", "streamName", "eventName", "offset", "movedAt") VALUES ('2480b859-e08a-4414-9c7d-003bc1a4b443', 'nina-von-c', 'Snickers', 14, '2019-10-30 08:55:36.305922+00');
INSERT INTO public."consumerOffsets" ("consumerId", "streamName", "eventName", "offset", "movedAt") VALUES ('2480b859-e08a-4414-9c7d-003bc1a4b221', 'nicowa', 'Snickers', 97, '2019-10-30 09:03:45.506324+00');
INSERT INTO public."consumerOffsets" ("consumerId", "streamName", "eventName", "offset", "movedAt") VALUES ('2480b859-e08a-4414-9c7d-003bc1a4b333', 'nicowa', 'Bloom', 6, '2019-10-30 09:20:18.506242+00');
INSERT INTO public."consumerOffsets" ("consumerId", "streamName", "eventName", "offset", "movedAt") VALUES ('2480b859-e08a-4414-9c7d-003bc1a4b444', 'nicowa', 'Blaam', 5, '2019-10-30 09:21:26.664704+00');
INSERT INTO public."consumerOffsets" ("consumerId", "streamName", "eventName", "offset", "movedAt") VALUES ('2480b859-e08a-4414-9c7d-003bc1a4b444', 'nicowa', 'Bliim', 3, '2019-10-30 09:21:32.694825+00');
INSERT INTO public."consumerOffsets" ("consumerId", "streamName", "eventName", "offset", "movedAt") VALUES ('2480b859-e08a-4414-9c7d-003bc1a4b444', 'nicowa', 'Bluum', 10, '2019-10-30 09:22:41.056334+00');
INSERT INTO public."consumerOffsets" ("consumerId", "streamName", "eventName", "offset", "movedAt") VALUES ('2480b859-e08a-4414-9c7d-003bc1a4b444', 'sandwich', 'Bluum', 1, '2019-10-30 09:23:16.332988+00');


--
-- TOC entry 2927 (class 0 OID 103349)
-- Dependencies: 203
-- Data for Name: events; Type: TABLE DATA; Schema: public; Owner: root
--

INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('streamOne', 'ExampleEventTwo', '2019-11-03 08:22:40.384+00', 1, 'c0dfd6ae-1657-42c1-9253-936a2339d0e6', '{"event":{"name":"ExampleEventTwo","version":1},"system":{"id":"alv123","name":"codello alvine","time":"2019-09-06 14:59:30","timezone":"Europe/Berlin"},"trigger":{"type":"system","name":"/path/to/script.php"},"payload":{}}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('streamOne', 'ExampleEventThree', '2019-11-14 07:47:57.69+00', 1, 'a8bae54a-7fdc-483b-8c8f-dc8e6edbdc83', '{"event":{"name":"ExampleEventThree","version":1},"system":{"id":"alv123","name":"codello alvine","time":"2019-09-06 15:59:12","timezone":"Europe/Berlin"},"trigger":{"type":"system","name":"/path/to/script.php"},"payload":{}}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-17 08:34:10.887+00', 69, '921952e1-df9a-4ea0-9f28-d03f80a48d6f', '{
  "event": {
    "id": "921952e1-df9a-4ea0-9f28-d03f80a48d6f",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-17 08:34:10.887+00', 68, '586eada4-18b9-493e-9f15-1f2cbb54b981', '{
  "event": {
    "id": "586eada4-18b9-493e-9f15-1f2cbb54b981",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-17 08:34:10.887+00', 57, '51825c4e-b7ea-46bc-b014-922311048934', '{
  "event": {
    "id": "51825c4e-b7ea-46bc-b014-922311048934",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-17 08:34:10.887+00', 58, '7f9696a7-6e08-48d4-90ea-7200499c4589', '{
  "event": {
    "id": "7f9696a7-6e08-48d4-90ea-7200499c4589",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-17 08:34:10.887+00', 59, '055a9fb5-c8a0-4ff4-9d5f-d7a0944cbe69', '{
  "event": {
    "id": "055a9fb5-c8a0-4ff4-9d5f-d7a0944cbe69",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-17 08:34:10.887+00', 54, '41e86000-e5a3-4723-9c5c-e376fc56c877', '{
  "event": {
    "id": "41e86000-e5a3-4723-9c5c-e376fc56c877",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-17 08:34:10.887+00', 52, 'c3f390b8-302f-49af-b987-66ab0a931a62', '{
  "event": {
    "id": "c3f390b8-302f-49af-b987-66ab0a931a62",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-17 08:34:10.887+00', 53, 'd0495bdc-b421-403a-8b8b-57e0c9b854e5', '{
  "event": {
    "id": "d0495bdc-b421-403a-8b8b-57e0c9b854e5",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-17 08:34:10.887+00', 60, 'e88b9409-d842-4f1f-94ca-ba6f1db4f15c', '{
  "event": {
    "id": "e88b9409-d842-4f1f-94ca-ba6f1db4f15c",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('codello', 'Snickers', '2019-11-03 08:22:40.384+00', 1, 'ef452ece-667b-4af3-a09b-8c1a692d818d', '{
  "event": {
    "id": "ef452ece-667b-4af3-a09b-8c1a692d818d",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('codello', 'Snickers', '2019-11-03 08:22:40.384+00', 11, '9672ce69-1a85-47b8-b177-2e6ed1b4e1a8', '{
  "event": {
    "id": "9672ce69-1a85-47b8-b177-2e6ed1b4e1a8",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('codello', 'Snickers', '2019-11-03 08:22:40.384+00', 8, '2aac4ebe-9613-4b4f-b538-a91f4c545f97', '{
  "event": {
    "id": "2aac4ebe-9613-4b4f-b538-a91f4c545f97",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('codello', 'Snickers', '2019-11-03 08:22:40.384+00', 7, '0b8193de-eb69-45e6-869a-1d0a8c7613a1', '{
  "event": {
    "id": "0b8193de-eb69-45e6-869a-1d0a8c7613a1",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('codello', 'Snickers', '2019-11-03 08:22:40.384+00', 10, '1daba155-dc81-461b-8e5e-cdc84e7997ec', '{
  "event": {
    "id": "1daba155-dc81-461b-8e5e-cdc84e7997ec",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('codello', 'Snickers', '2019-11-03 08:22:40.384+00', 5, 'd4c36b9a-e464-47dd-b785-c593f0c6dfb1', '{
  "event": {
    "id": "d4c36b9a-e464-47dd-b785-c593f0c6dfb1",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-17 08:34:10.887+00', 71, 'c1fefac3-7dc9-4e46-a1bf-9a6322c22e85', '{
  "event": {
    "id": "c1fefac3-7dc9-4e46-a1bf-9a6322c22e85",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {"foo": "bar"}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-17 08:34:10.887+00', 48, 'f448d810-a21f-40c7-a2bb-64aff067ad6d', '{
  "event": {
    "id": "f448d810-a21f-40c7-a2bb-64aff067ad6d",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-17 08:34:10.887+00', 70, '46405d45-0341-4b78-8d4c-24217e3f969e', '{
  "event": {
    "id": "46405d45-0341-4b78-8d4c-24217e3f969e",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-17 08:34:10.887+00', 65, 'd0a2ccd5-6a0f-4e0c-8052-79889395c3d2', '{
  "event": {
    "id": "d0a2ccd5-6a0f-4e0c-8052-79889395c3d2",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-17 08:34:10.887+00', 46, 'e41f3a02-cbd2-49d6-91a4-b7f25193bdfe', '{
  "event": {
    "id": "e41f3a02-cbd2-49d6-91a4-b7f25193bdfe",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-17 08:34:10.887+00', 56, '06d88803-e367-46a6-a4fb-70f07ce094ff', '{
  "event": {
    "id": "06d88803-e367-46a6-a4fb-70f07ce094ff",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-17 08:34:10.887+00', 74, '30733b38-4b36-4f3a-8471-a703af0cc483', '{
  "event": {
    "id": "30733b38-4b36-4f3a-8471-a703af0cc483",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-17 08:34:10.887+00', 50, '8dbc934f-5a8e-44eb-9a48-5c8a8261ca1d', '{
  "event": {
    "id": "8dbc934f-5a8e-44eb-9a48-5c8a8261ca1d",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-17 08:34:10.887+00', 64, 'ebf1e616-ca51-4f76-908d-d5781c0ad550', '{
  "event": {
    "id": "ebf1e616-ca51-4f76-908d-d5781c0ad550",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-17 08:34:10.887+00', 51, '8a29a648-201a-4535-8f78-2b669920f916', '{
  "event": {
    "id": "8a29a648-201a-4535-8f78-2b669920f916",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-17 08:34:10.887+00', 66, '3813b64b-5e67-47aa-9ff1-702193309b48', '{
  "event": {
    "id": "3813b64b-5e67-47aa-9ff1-702193309b48",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-17 08:34:10.887+00', 55, 'b87e4fd5-3e11-4361-8bdd-d6cc7f780ae6', '{
  "event": {
    "id": "b87e4fd5-3e11-4361-8bdd-d6cc7f780ae6",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('codello', 'Snickers', '2019-11-03 08:22:40.384+00', 14, '24b90200-0644-4691-b11b-55e2aa91f228', '{
  "event": {
    "id": "24b90200-0644-4691-b11b-55e2aa91f228",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nina-von-c', 'Snickers', '2019-11-03 08:22:40.384+00', 10, '5f5b2af6-319a-4dec-b2ea-4958bd734c07', '{
  "event": {
    "id": "5f5b2af6-319a-4dec-b2ea-4958bd734c07",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nina-von-c', 'Snickers', '2019-11-03 08:22:40.384+00', 6, 'e29a1b70-4870-4a93-b64c-f2397478660a', '{
  "event": {
    "id": "e29a1b70-4870-4a93-b64c-f2397478660a",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nina-von-c', 'Snickers', '2019-11-03 08:22:40.384+00', 1, 'cf4d7280-dc7b-45b9-9f12-546d37486561', '{
  "event": {
    "id": "cf4d7280-dc7b-45b9-9f12-546d37486561",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-17 08:34:10.887+00', 73, '9ca6f9d1-2909-45b3-a79d-3ede68442822', '{
  "event": {
    "id": "9ca6f9d1-2909-45b3-a79d-3ede68442822",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-17 08:34:10.887+00', 49, '1e2beda5-3af9-41bc-a2bd-8c7f53dea173', '{
  "event": {
    "id": "1e2beda5-3af9-41bc-a2bd-8c7f53dea173",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-17 08:34:10.887+00', 61, '9019ae07-730d-479c-8892-b1dbe78d1c8e', '{
  "event": {
    "id": "9019ae07-730d-479c-8892-b1dbe78d1c8e",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-17 08:34:10.887+00', 63, 'dab958d3-4d21-4600-8c8f-1a0e45a2a5eb', '{
  "event": {
    "id": "dab958d3-4d21-4600-8c8f-1a0e45a2a5eb",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-17 08:34:10.887+00', 67, '7b149fad-5b60-4763-98b1-fa1bdf7af82c', '{
  "event": {
    "id": "7b149fad-5b60-4763-98b1-fa1bdf7af82c",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-17 08:34:10.887+00', 72, 'f50278ec-39c5-40b3-a41e-8b2d0645a2b7', '{
  "event": {
    "id": "f50278ec-39c5-40b3-a41e-8b2d0645a2b7",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-17 08:34:10.887+00', 47, '9f4c7141-82f7-4db1-ae1b-2b9637590128', '{
  "event": {
    "id": "9f4c7141-82f7-4db1-ae1b-2b9637590128",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-17 08:34:10.887+00', 62, '343a61fc-b139-40e9-a18d-6a857aa6e246', '{
  "event": {
    "id": "343a61fc-b139-40e9-a18d-6a857aa6e246",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-21 08:35:32.28+00', 88, '4a3bb9c8-de3e-4e52-838b-125529e1d8f3', '{
  "event": {
    "id": "4a3bb9c8-de3e-4e52-838b-125529e1d8f3",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('carl-gross', 'Snickers', '2019-11-30 08:22:41.072632+00', 4, '5d03b3c4-6880-46fc-8ff6-bf92d84c3b7f', '{
  "event": {
    "id": "5d03b3c4-6880-46fc-8ff6-bf92d84c3b7f",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('carl-gross', 'Snickers', '2019-11-30 08:22:41.825304+00', 5, '866b4e17-b9db-4d1e-b918-dbf0366529c0', '{
  "event": {
    "id": "866b4e17-b9db-4d1e-b918-dbf0366529c0",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('carl-gross', 'Snickers', '2019-11-30 08:22:42.482548+00', 6, '3ac5e05c-6c18-4d5f-afe6-d1974b11fa79', '{
  "event": {
    "id": "3ac5e05c-6c18-4d5f-afe6-d1974b11fa79",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nina-von-c', 'Snickers', '2019-11-15 08:21:49.083+00', 18, '2c929c23-23a0-44e2-9e21-307a60e28423', '{
  "event": {
    "id": "2c929c23-23a0-44e2-9e21-307a60e28423",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nina-von-c', 'Snickers', '2019-11-26 08:21:46.616+00', 14, '7ab630ba-0405-4e5f-aea9-569c5317c862', '{
  "event": {
    "id": "7ab630ba-0405-4e5f-aea9-569c5317c862",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('carl-gross', 'Snickers', '2019-11-03 08:22:40.384+00', 2, '28f6a696-6c09-4a6a-8929-cfe318e6ff1f', '{
  "event": {
    "id": "28f6a696-6c09-4a6a-8929-cfe318e6ff1f",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nina-von-c', 'Snickers', '2019-11-03 08:22:40.384+00', 22, '4770df43-c5b2-45cc-ad02-95eeba3b9366', '{
  "event": {
    "id": "4770df43-c5b2-45cc-ad02-95eeba3b9366",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('carl-gross', 'Snickers', '2019-11-30 08:22:43.191572+00', 7, '6aa7f64a-8ae1-4a3b-8a1a-ee96b3eac7d7', '{
  "event": {
    "id": "6aa7f64a-8ae1-4a3b-8a1a-ee96b3eac7d7",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('carl-gross', 'Snickers', '2019-11-30 08:22:43.793587+00', 8, '4032ccc9-dfa1-4e0a-a73e-ecb9d558032c', '{
  "event": {
    "id": "4032ccc9-dfa1-4e0a-a73e-ecb9d558032c",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-21 08:35:32.28+00', 3, '8b6045e5-e70a-4c85-b2ed-48b198c1ae00', '{
  "event": {
    "id": "8b6045e5-e70a-4c85-b2ed-48b198c1ae00",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-21 08:35:32.28+00', 4, '75718aba-9d52-4e2d-92c1-d76721a39d9a', '{
  "event": {
    "id": "75718aba-9d52-4e2d-92c1-d76721a39d9a",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-21 08:35:32.28+00', 90, '1bf3b658-dbf9-4598-9231-3e33a4ef6287', '{
  "event": {
    "id": "1bf3b658-dbf9-4598-9231-3e33a4ef6287",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-21 08:35:32.28+00', 91, '43907a6f-c735-4e9c-9171-8b39940acca4', '{
  "event": {
    "id": "43907a6f-c735-4e9c-9171-8b39940acca4",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-21 08:35:32.28+00', 7, '8656af50-8ab2-42f5-9e38-19f16e2fed12', '{
  "event": {
    "id": "8656af50-8ab2-42f5-9e38-19f16e2fed12",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-21 08:35:32.28+00', 87, '728880e4-7234-4b06-8e3a-c97f5e45dbbc', '{
  "event": {
    "id": "728880e4-7234-4b06-8e3a-c97f5e45dbbc",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-21 08:35:32.28+00', 2, '4fb9e182-d1c5-4880-93c6-423b94d481b5', '{
  "event": {
    "id": "4fb9e182-d1c5-4880-93c6-423b94d481b5",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-21 08:35:32.28+00', 1, '958784ae-3f1c-4e65-8901-b3c3c32d36b9', '{
  "event": {
    "id": "958784ae-3f1c-4e65-8901-b3c3c32d36b9",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-21 08:35:32.28+00', 5, '4934f121-f7c6-4df8-853f-e579377790e3', '{
  "event": {
    "id": "4934f121-f7c6-4df8-853f-e579377790e3",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-21 08:35:32.28+00', 86, 'fe73c018-c36e-4495-b5ca-db8cbe0a75a3', '{
  "event": {
    "id": "fe73c018-c36e-4495-b5ca-db8cbe0a75a3",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-21 08:35:32.28+00', 78, '5ab79f99-d212-4f9b-a0c6-f09778eceffe', '{
  "event": {
    "id": "5ab79f99-d212-4f9b-a0c6-f09778eceffe",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-21 08:35:32.28+00', 6, '8e1f01a2-5495-4d2b-bfad-8fece62084ad', '{
  "event": {
    "id": "8e1f01a2-5495-4d2b-bfad-8fece62084ad",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-21 08:35:32.28+00', 84, 'a8434717-0f73-4ba9-acea-dd1c2c81e962', '{
  "event": {
    "id": "a8434717-0f73-4ba9-acea-dd1c2c81e962",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-21 08:35:32.28+00', 79, '9c69f75b-5572-449f-a021-4a066113d8a5', '{
  "event": {
    "id": "9c69f75b-5572-449f-a021-4a066113d8a5",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-21 08:35:32.28+00', 75, '90c55de0-e4f2-419a-ad7e-4c8ad7af3235', '{
  "event": {
    "id": "90c55de0-e4f2-419a-ad7e-4c8ad7af3235",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-21 08:35:32.28+00', 82, '8f0314cc-aec0-4b4e-998c-b22dc567730e', '{
  "event": {
    "id": "8f0314cc-aec0-4b4e-998c-b22dc567730e",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-21 08:35:32.28+00', 89, 'd1be8dd1-aebf-4599-b1d4-48c97c3bb9b4', '{
  "event": {
    "id": "d1be8dd1-aebf-4599-b1d4-48c97c3bb9b4",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-21 08:35:32.28+00', 76, '692bf02d-9864-4a8b-ad77-b8ec7fc7f827', '{
  "event": {
    "id": "692bf02d-9864-4a8b-ad77-b8ec7fc7f827",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-22 08:36:42.877+00', 22, '65bd44b3-19e5-4142-a3f1-ab4b6c8fd2aa', '{
  "event": {
    "id": "65bd44b3-19e5-4142-a3f1-ab4b6c8fd2aa",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-22 08:36:42.877+00', 13, 'd6da674a-d3db-4a0f-a4d3-b8c5b48c17e7', '{
  "event": {
    "id": "d6da674a-d3db-4a0f-a4d3-b8c5b48c17e7",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-22 08:36:42.877+00', 12, 'f25838cf-b925-4ec1-b6a1-1e570c2b78f3', '{
  "event": {
    "id": "f25838cf-b925-4ec1-b6a1-1e570c2b78f3",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-22 08:36:42.877+00', 11, 'bc4f4297-f6ca-40d0-bda0-86fd01398ee4', '{
  "event": {
    "id": "bc4f4297-f6ca-40d0-bda0-86fd01398ee4",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-22 08:36:42.877+00', 56, '33f02a8e-72ae-45fe-8805-e7fb8cc0043a', '{
  "event": {
    "id": "33f02a8e-72ae-45fe-8805-e7fb8cc0043a",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-22 08:36:42.877+00', 18, 'f6859d7d-4ac1-4ac5-9934-6daee691d153', '{
  "event": {
    "id": "f6859d7d-4ac1-4ac5-9934-6daee691d153",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-22 08:36:42.877+00', 16, '1cf79295-6f4c-4325-8495-418ff5a9e564', '{
  "event": {
    "id": "1cf79295-6f4c-4325-8495-418ff5a9e564",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('carl-gross', 'Snickers', '2019-11-30 08:23:56.234448+00', 34, 'be7eca70-6398-489e-a326-da2dc88780f5', '{
  "event": {
    "id": "be7eca70-6398-489e-a326-da2dc88780f5",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('carl-gross', 'Snickers', '2019-11-30 08:23:56.865454+00', 35, '71b93928-2f87-4c20-86a0-d49c3cac0a63', '{
  "event": {
    "id": "71b93928-2f87-4c20-86a0-d49c3cac0a63",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('carl-gross', 'Snickers', '2019-11-30 08:23:57.477758+00', 36, '6eb2e6c3-6468-45b3-86fa-eb5e8960918a', '{
  "event": {
    "id": "6eb2e6c3-6468-45b3-86fa-eb5e8960918a",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('carl-gross', 'Snickers', '2019-11-30 08:23:58.129293+00', 37, '26174efe-9c02-4ada-8cc3-ccb05b8aa232', '{
  "event": {
    "id": "26174efe-9c02-4ada-8cc3-ccb05b8aa232",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('carl-gross', 'Snickers', '2019-11-30 08:23:58.805645+00', 38, 'd79f0d70-f0d1-4b8f-95e0-5a18f9142df7', '{
  "event": {
    "id": "d79f0d70-f0d1-4b8f-95e0-5a18f9142df7",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('carl-gross', 'Snickers', '2019-11-30 08:23:59.464091+00', 39, 'b57fe111-3b5a-43b5-a4ee-b5d770409e09', '{
  "event": {
    "id": "b57fe111-3b5a-43b5-a4ee-b5d770409e09",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('carl-gross', 'Snickers', '2019-11-30 08:24:00.148767+00', 40, 'b65acd05-a9a9-44a1-86d1-b48d5bffbe41', '{
  "event": {
    "id": "b65acd05-a9a9-44a1-86d1-b48d5bffbe41",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('carl-gross', 'Snickers', '2019-11-30 08:24:00.79247+00', 41, '51b2f4d8-9149-4191-8dfe-75793cce5593', '{
  "event": {
    "id": "51b2f4d8-9149-4191-8dfe-75793cce5593",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('carl-gross', 'Snickers', '2019-11-30 08:24:01.416398+00', 42, 'c264c1d3-9d74-4047-9f88-8a9bc32ad8f6', '{
  "event": {
    "id": "c264c1d3-9d74-4047-9f88-8a9bc32ad8f6",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('carl-gross', 'Snickers', '2019-11-30 08:24:02.130053+00', 43, '7ae4241e-68f6-4dd2-8a1d-5f9d780b0f40', '{
  "event": {
    "id": "7ae4241e-68f6-4dd2-8a1d-5f9d780b0f40",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('carl-gross', 'Snickers', '2019-11-30 08:24:07.41025+00', 44, 'b1102558-a61a-4c56-9fbc-52898d71d51a', '{
  "event": {
    "id": "b1102558-a61a-4c56-9fbc-52898d71d51a",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('carl-gross', 'Snickers', '2019-11-30 08:24:08.250871+00', 45, '4f2002ea-bf0a-4ef9-b844-61cba8fc3d94', '{
  "event": {
    "id": "4f2002ea-bf0a-4ef9-b844-61cba8fc3d94",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('carl-gross', 'Snickers', '2019-11-30 08:24:09.037258+00', 46, '5b64a372-e1d4-4bf1-8f8e-98fc5cee9956', '{
  "event": {
    "id": "5b64a372-e1d4-4bf1-8f8e-98fc5cee9956",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('carl-gross', 'Snickers', '2019-11-30 08:24:09.746295+00', 47, 'f60dcfb0-62f3-43d2-8e33-d343c248837c', '{
  "event": {
    "id": "f60dcfb0-62f3-43d2-8e33-d343c248837c",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('carl-gross', 'Snickers', '2019-11-30 08:24:10.442623+00', 48, 'c562cc34-1f8a-4f74-aab7-e82014177720', '{
  "event": {
    "id": "c562cc34-1f8a-4f74-aab7-e82014177720",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('carl-gross', 'Snickers', '2019-11-30 08:24:11.107207+00', 49, 'ec4e4858-bec0-4b59-bce4-4744ed727284', '{
  "event": {
    "id": "ec4e4858-bec0-4b59-bce4-4744ed727284",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('carl-gross', 'Snickers', '2019-11-30 08:24:11.772114+00', 50, 'e41407b2-8298-4ea4-89ed-dea258474a8a', '{
  "event": {
    "id": "e41407b2-8298-4ea4-89ed-dea258474a8a",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('carl-gross', 'Snickers', '2019-11-30 08:24:12.467351+00', 51, 'f356400d-80c1-4404-a45e-eaf7377f7517', '{
  "event": {
    "id": "f356400d-80c1-4404-a45e-eaf7377f7517",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('carl-gross', 'Snickers', '2019-11-30 08:24:13.126218+00', 52, 'ad8aef19-a2be-4354-8fb6-0f230f565dea', '{
  "event": {
    "id": "ad8aef19-a2be-4354-8fb6-0f230f565dea",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('carl-gross', 'Snickers', '2019-11-30 08:24:13.791428+00', 53, '1d90abdf-e6eb-46dd-bcec-3a074527f72d', '{
  "event": {
    "id": "1d90abdf-e6eb-46dd-bcec-3a074527f72d",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('carl-gross', 'Snickers', '2019-11-30 08:24:14.514917+00', 54, '14fe8c2d-0fa1-44e9-a6d2-44026c44a285', '{
  "event": {
    "id": "14fe8c2d-0fa1-44e9-a6d2-44026c44a285",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('carl-gross', 'Snickers', '2019-11-30 08:24:15.171135+00', 55, '925b3cf4-e545-4a0e-87e4-48ea580c0238', '{
  "event": {
    "id": "925b3cf4-e545-4a0e-87e4-48ea580c0238",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('carl-gross', 'Snickers', '2019-11-30 08:24:15.824512+00', 56, 'ee0bce5f-1075-4748-b40c-83d81a7b5078', '{
  "event": {
    "id": "ee0bce5f-1075-4748-b40c-83d81a7b5078",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('carl-gross', 'Snickers', '2019-11-30 08:24:16.486302+00', 57, 'ee8cbae1-bb9e-4adc-bbc1-b8de79ddf73b', '{
  "event": {
    "id": "ee8cbae1-bb9e-4adc-bbc1-b8de79ddf73b",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('carl-gross', 'Snickers', '2019-11-30 08:24:17.303442+00', 58, '106eeef9-7bf5-493e-af23-4902e6f328f4', '{
  "event": {
    "id": "106eeef9-7bf5-493e-af23-4902e6f328f4",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-22 08:36:42.877+00', 14, '9b38275a-be1a-4e91-8412-5bc2019ceba4', '{
  "event": {
    "id": "9b38275a-be1a-4e91-8412-5bc2019ceba4",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-22 08:36:42.877+00', 49, 'da01ff04-c6e7-4771-b9bc-9d5fb428fbd4', '{
  "event": {
    "id": "da01ff04-c6e7-4771-b9bc-9d5fb428fbd4",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-22 08:36:42.877+00', 53, '00208afd-06aa-4d85-a516-ab7982c2cc06', '{
  "event": {
    "id": "00208afd-06aa-4d85-a516-ab7982c2cc06",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-22 08:36:42.877+00', 17, '254188a6-026b-4ada-9e86-eb2510d496c5', '{
  "event": {
    "id": "254188a6-026b-4ada-9e86-eb2510d496c5",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-22 08:36:42.877+00', 54, 'ecf53794-591e-4745-aae0-68c40ccb75f9', '{
  "event": {
    "id": "ecf53794-591e-4745-aae0-68c40ccb75f9",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-22 08:36:42.877+00', 15, 'cf3ced44-84db-492a-851c-1211ab86231a', '{
  "event": {
    "id": "cf3ced44-84db-492a-851c-1211ab86231a",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-22 08:36:42.877+00', 25, 'aa00facd-2699-4c4f-8fd2-e2f55cc1f34a', '{
  "event": {
    "id": "aa00facd-2699-4c4f-8fd2-e2f55cc1f34a",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-22 08:36:42.877+00', 26, 'fc031a18-3136-49a3-a457-04b033b68bef', '{
  "event": {
    "id": "fc031a18-3136-49a3-a457-04b033b68bef",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-22 08:36:42.877+00', 47, 'e9774250-e92c-475e-bb80-04cf427cfa85', '{
  "event": {
    "id": "e9774250-e92c-475e-bb80-04cf427cfa85",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-22 08:36:42.877+00', 20, '28628713-b874-4223-9f21-61af83245e39', '{
  "event": {
    "id": "28628713-b874-4223-9f21-61af83245e39",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-22 08:36:42.877+00', 24, 'd81ba626-22a5-41f9-a85d-3ed38af3815c', '{
  "event": {
    "id": "d81ba626-22a5-41f9-a85d-3ed38af3815c",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-22 08:36:42.877+00', 21, '6a52449c-1675-44f9-b4b6-7e857b6443be', '{
  "event": {
    "id": "6a52449c-1675-44f9-b4b6-7e857b6443be",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-22 08:36:42.877+00', 19, '342c98ea-ca13-4e87-a275-521bbbf3e577', '{
  "event": {
    "id": "342c98ea-ca13-4e87-a275-521bbbf3e577",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-22 08:36:42.877+00', 23, 'd6cdd60f-ee8f-4c64-8da6-7cab45040ef3', '{
  "event": {
    "id": "d6cdd60f-ee8f-4c64-8da6-7cab45040ef3",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-22 08:36:42.877+00', 51, '19c07cd2-30e6-43d1-8d79-c336836469ca', '{
  "event": {
    "id": "19c07cd2-30e6-43d1-8d79-c336836469ca",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-22 08:36:42.877+00', 55, 'ff6ce9e4-e55c-47a1-b8c6-ad14f8f056c9', '{
  "event": {
    "id": "ff6ce9e4-e55c-47a1-b8c6-ad14f8f056c9",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-24 08:37:30.218+00', 92, '9a1bee97-d112-4084-b75f-4ebf23717296', '{
  "event": {
    "id": "9a1bee97-d112-4084-b75f-4ebf23717296",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-24 08:37:30.218+00', 94, 'cb3766b4-0727-4ac5-9d61-e8a871e01c00', '{
  "event": {
    "id": "cb3766b4-0727-4ac5-9d61-e8a871e01c00",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-24 08:37:30.218+00', 63, '1c903bd6-2885-457b-a40e-e5c2cac76b62', '{
  "event": {
    "id": "1c903bd6-2885-457b-a40e-e5c2cac76b62",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-24 08:37:30.218+00', 62, '31e468c7-7f8a-45c8-89da-74ac232a022c', '{
  "event": {
    "id": "31e468c7-7f8a-45c8-89da-74ac232a022c",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-24 08:37:30.218+00', 85, 'f77e0f28-a542-46da-98ac-ac3c3629a865', '{
  "event": {
    "id": "f77e0f28-a542-46da-98ac-ac3c3629a865",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-24 08:37:30.218+00', 82, '3ada8836-d33e-4bc5-a0fe-53c7658a102f', '{
  "event": {
    "id": "3ada8836-d33e-4bc5-a0fe-53c7658a102f",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-24 08:37:30.218+00', 64, '93c59d2d-8655-4336-a7f0-81ac304f1f38', '{
  "event": {
    "id": "93c59d2d-8655-4336-a7f0-81ac304f1f38",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-24 08:37:30.218+00', 72, '5512a1f5-a290-4460-8cd2-4e8ab11ffc17', '{
  "event": {
    "id": "5512a1f5-a290-4460-8cd2-4e8ab11ffc17",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-24 08:37:30.218+00', 84, 'a26e1e8d-4fcb-41eb-923e-1be092639df2', '{
  "event": {
    "id": "a26e1e8d-4fcb-41eb-923e-1be092639df2",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-24 08:37:30.218+00', 93, '0b94129f-ddcc-46de-a0c1-969577b47417', '{
  "event": {
    "id": "0b94129f-ddcc-46de-a0c1-969577b47417",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-24 08:37:30.218+00', 66, 'dac434e3-3130-4ac1-8ea7-6009d1fb88f4', '{
  "event": {
    "id": "dac434e3-3130-4ac1-8ea7-6009d1fb88f4",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-24 08:37:30.218+00', 59, '0621371e-6d29-4ad4-8e5f-4327d4389f6a', '{
  "event": {
    "id": "0621371e-6d29-4ad4-8e5f-4327d4389f6a",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-24 08:37:30.218+00', 71, '20860a66-f993-4977-8542-895091f3083d', '{
  "event": {
    "id": "20860a66-f993-4977-8542-895091f3083d",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-24 08:37:30.218+00', 88, '7458f054-0b3d-4166-a202-404b6851ff96', '{
  "event": {
    "id": "7458f054-0b3d-4166-a202-404b6851ff96",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-24 08:37:30.218+00', 79, 'bf52f039-4817-432e-9f53-8d4016f78f69', '{
  "event": {
    "id": "bf52f039-4817-432e-9f53-8d4016f78f69",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-24 08:37:30.218+00', 91, '91950a6d-701a-4346-8267-f2e81a5b7fa0', '{
  "event": {
    "id": "91950a6d-701a-4346-8267-f2e81a5b7fa0",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-24 08:37:30.218+00', 87, '14b0ee32-40de-46a2-ba57-3a5b6f9ffaed', '{
  "event": {
    "id": "14b0ee32-40de-46a2-ba57-3a5b6f9ffaed",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-24 08:37:30.218+00', 78, '85bed418-4275-49f7-91ed-68436034ceb5', '{
  "event": {
    "id": "85bed418-4275-49f7-91ed-68436034ceb5",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-24 08:37:30.218+00', 76, 'fe898d8e-c728-4496-b9c1-438bc01f3581', '{
  "event": {
    "id": "fe898d8e-c728-4496-b9c1-438bc01f3581",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-24 08:37:30.218+00', 77, '4855cbc4-015b-4a53-b5f9-6a7dedc98b16', '{
  "event": {
    "id": "4855cbc4-015b-4a53-b5f9-6a7dedc98b16",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-30 08:25:39.981046+00', 27, 'fc0e4edc-0a46-4e30-9952-0d392b086d1e', '{
  "event": {
    "id": "fc0e4edc-0a46-4e30-9952-0d392b086d1e",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-30 08:25:40.571782+00', 28, 'fed7db17-41d0-41e4-9a52-4277c68a3f5a', '{
  "event": {
    "id": "fed7db17-41d0-41e4-9a52-4277c68a3f5a",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-30 08:25:41.17533+00', 29, '2a0344dd-2c36-49cd-abe7-ffc061851e13', '{
  "event": {
    "id": "2a0344dd-2c36-49cd-abe7-ffc061851e13",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-30 08:25:41.728624+00', 30, '88ff8a25-d1b7-4984-9b20-55e85f7e28e9', '{
  "event": {
    "id": "88ff8a25-d1b7-4984-9b20-55e85f7e28e9",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-30 08:25:42.338995+00', 31, '1bde6da4-a419-4d81-b281-72064139e4fc', '{
  "event": {
    "id": "1bde6da4-a419-4d81-b281-72064139e4fc",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-30 08:25:42.841929+00', 32, 'f7dcee6b-77b4-4351-bcff-f5ad070824be', '{
  "event": {
    "id": "f7dcee6b-77b4-4351-bcff-f5ad070824be",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-30 08:25:43.51196+00', 33, '33a0f04d-ed14-4b0b-abb4-37e1b16751a1', '{
  "event": {
    "id": "33a0f04d-ed14-4b0b-abb4-37e1b16751a1",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-30 08:25:44.027298+00', 34, 'ea71fe6e-425c-4528-ab5d-80cfaefc2db7', '{
  "event": {
    "id": "ea71fe6e-425c-4528-ab5d-80cfaefc2db7",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-30 08:25:44.654666+00', 35, '1674ce67-3d6b-40bf-b661-a3c1d235d19a', '{
  "event": {
    "id": "1674ce67-3d6b-40bf-b661-a3c1d235d19a",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-30 08:25:45.18114+00', 36, '8c3f8387-a622-4f7a-a3d5-a007e001ab0a', '{
  "event": {
    "id": "8c3f8387-a622-4f7a-a3d5-a007e001ab0a",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-30 08:25:45.816544+00', 37, 'f992da74-da71-4252-b9ea-603280898575', '{
  "event": {
    "id": "f992da74-da71-4252-b9ea-603280898575",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-30 08:25:46.332969+00', 38, 'b03fcf4e-5d8f-40c0-8101-ae327e23521b', '{
  "event": {
    "id": "b03fcf4e-5d8f-40c0-8101-ae327e23521b",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-30 08:25:46.969316+00', 39, '8369a484-a17f-4f7f-a862-c731208dbcc0', '{
  "event": {
    "id": "8369a484-a17f-4f7f-a862-c731208dbcc0",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-24 08:37:30.218+00', 70, 'b4fe0267-ce14-41d7-9726-bc4eb398a4d9', '{
  "event": {
    "id": "b4fe0267-ce14-41d7-9726-bc4eb398a4d9",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-24 08:37:30.218+00', 89, 'b2ff733d-e80d-4f1d-8955-56b2469815c9', '{
  "event": {
    "id": "b2ff733d-e80d-4f1d-8955-56b2469815c9",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-24 08:37:30.218+00', 80, '8cacbb65-23ef-4c09-88b3-011b59ca3241', '{
  "event": {
    "id": "8cacbb65-23ef-4c09-88b3-011b59ca3241",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-24 08:37:30.218+00', 73, '72d67d17-da04-4ef1-b2d0-3458ed368120', '{
  "event": {
    "id": "72d67d17-da04-4ef1-b2d0-3458ed368120",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-24 08:37:30.218+00', 86, 'f97b8674-832c-4f32-8a81-db223ce6d2a3', '{
  "event": {
    "id": "f97b8674-832c-4f32-8a81-db223ce6d2a3",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-24 08:37:30.218+00', 90, '847c2f46-9747-4645-a18a-5e22466be90e', '{
  "event": {
    "id": "847c2f46-9747-4645-a18a-5e22466be90e",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-24 08:37:30.218+00', 68, '7c257e73-d4c6-45a9-bb29-d07b3b2ff5e7', '{
  "event": {
    "id": "7c257e73-d4c6-45a9-bb29-d07b3b2ff5e7",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-24 08:37:30.218+00', 61, 'bc3a1d18-ccfd-4cc9-93f6-fbdf97132ed9', '{
  "event": {
    "id": "bc3a1d18-ccfd-4cc9-93f6-fbdf97132ed9",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-24 08:37:30.218+00', 60, 'c0e9681c-7ffe-479f-ad01-19c59f879e50', '{
  "event": {
    "id": "c0e9681c-7ffe-479f-ad01-19c59f879e50",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-04 08:27:46.173+00', 47, '9d195752-e3e5-4980-8d9c-3133652c028f', '{
  "event": {
    "id": "9d195752-e3e5-4980-8d9c-3133652c028f",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-04 08:27:46.173+00', 45, '5e94ef47-30d1-48ba-917e-494fcbb6fca3', '{
  "event": {
    "id": "5e94ef47-30d1-48ba-917e-494fcbb6fca3",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-24 08:37:30.218+00', 67, '06d88438-33cd-4d4a-9043-94ef51407c66', '{
  "event": {
    "id": "06d88438-33cd-4d4a-9043-94ef51407c66",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-24 08:37:30.218+00', 75, 'd90ec854-1e8d-42cf-bda1-a345e7bc3585', '{
  "event": {
    "id": "d90ec854-1e8d-42cf-bda1-a345e7bc3585",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-24 08:37:30.218+00', 69, 'a53faf78-1357-40d9-a471-2fc1bf3401d8', '{
  "event": {
    "id": "a53faf78-1357-40d9-a471-2fc1bf3401d8",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-24 08:37:30.218+00', 95, 'ecc21e4f-2840-4687-a599-df2bbfee3b19', '{
  "event": {
    "id": "ecc21e4f-2840-4687-a599-df2bbfee3b19",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-24 08:37:30.218+00', 65, '4b46a0f9-a7a2-4917-a2a4-dd2b04f77f84', '{
  "event": {
    "id": "4b46a0f9-a7a2-4917-a2a4-dd2b04f77f84",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-24 08:37:30.218+00', 74, '7b97795f-5bbb-483e-a53d-05484275aa54', '{
  "event": {
    "id": "7b97795f-5bbb-483e-a53d-05484275aa54",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-24 08:37:30.218+00', 83, '734d69b3-3226-43a1-ba4c-1fd039b4c262', '{
  "event": {
    "id": "734d69b3-3226-43a1-ba4c-1fd039b4c262",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-24 08:37:30.218+00', 81, '17c509eb-02fe-4998-bdfb-0e7afe96e644', '{
  "event": {
    "id": "17c509eb-02fe-4998-bdfb-0e7afe96e644",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-09 08:32:57.71+00', 36, 'd5ec343d-3bce-4f47-a56e-ba72c93215f4', '{
  "event": {
    "id": "d5ec343d-3bce-4f47-a56e-ba72c93215f4",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-09 08:32:57.71+00', 28, '549f9bca-d11c-4b8d-864f-ff21b04fb12f', '{
  "event": {
    "id": "549f9bca-d11c-4b8d-864f-ff21b04fb12f",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-09 08:32:57.71+00', 33, '71052a57-e335-4ab8-ad6f-5190a5865d55', '{
  "event": {
    "id": "71052a57-e335-4ab8-ad6f-5190a5865d55",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-09 08:32:57.71+00', 18, '3ffed525-6ff8-4abe-a30b-2f31d8854768', '{
  "event": {
    "id": "3ffed525-6ff8-4abe-a30b-2f31d8854768",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-09 08:32:57.71+00', 27, '477bf982-f0da-4a84-a262-725fb96df328', '{
  "event": {
    "id": "477bf982-f0da-4a84-a262-725fb96df328",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-09 08:32:57.71+00', 23, '21ce325e-6a82-4f44-a69f-d9b80fed48f9', '{
  "event": {
    "id": "21ce325e-6a82-4f44-a69f-d9b80fed48f9",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-09 08:32:57.71+00', 37, '28ce6f28-57e9-43cd-a457-471ba2118d51', '{
  "event": {
    "id": "28ce6f28-57e9-43cd-a457-471ba2118d51",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-04 08:27:46.173+00', 66, '62b92376-baef-4775-83e3-da3e4a4da707', '{
  "event": {
    "id": "62b92376-baef-4775-83e3-da3e4a4da707",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-08 08:38:35.806+00', 112, '34d6f30b-c180-4600-a73e-85f2719eb788', '{
  "event": {
    "id": "34d6f30b-c180-4600-a73e-85f2719eb788",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-08 08:38:35.806+00', 132, 'e4e6b95b-1133-4cba-a810-3ec657f672ad', '{
  "event": {
    "id": "e4e6b95b-1133-4cba-a810-3ec657f672ad",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-08 08:38:35.806+00', 138, '6e74757e-3d93-4808-9a35-43aa3cb3d30b', '{
  "event": {
    "id": "6e74757e-3d93-4808-9a35-43aa3cb3d30b",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-08 08:38:35.806+00', 124, 'c0f1f75d-07b7-4bee-9f4e-0854b017382e', '{
  "event": {
    "id": "c0f1f75d-07b7-4bee-9f4e-0854b017382e",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-08 08:38:35.806+00', 140, '000058e7-fd97-4826-a524-98ec4cb2148e', '{
  "event": {
    "id": "000058e7-fd97-4826-a524-98ec4cb2148e",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-08 08:38:35.806+00', 122, '29742caf-68fe-4c7f-887d-3b69b37cbaa1', '{
  "event": {
    "id": "29742caf-68fe-4c7f-887d-3b69b37cbaa1",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-08 08:38:35.806+00', 131, 'ed11d7ac-4995-48fe-a498-b14f2408c96f', '{
  "event": {
    "id": "ed11d7ac-4995-48fe-a498-b14f2408c96f",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-08 08:38:35.806+00', 119, 'e6728e60-3f49-4ef3-9952-d3222382a07a', '{
  "event": {
    "id": "e6728e60-3f49-4ef3-9952-d3222382a07a",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-08 08:38:35.806+00', 121, 'dcfaed79-cfab-4206-b14e-00426ce31d00', '{
  "event": {
    "id": "dcfaed79-cfab-4206-b14e-00426ce31d00",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-08 08:38:35.806+00', 118, 'a8a681bb-c577-4eae-8473-a3e53efa783a', '{
  "event": {
    "id": "a8a681bb-c577-4eae-8473-a3e53efa783a",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-08 08:38:35.806+00', 137, '22796153-f3db-425d-b86f-f9dfc6c5fec9', '{
  "event": {
    "id": "22796153-f3db-425d-b86f-f9dfc6c5fec9",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-08 08:38:35.806+00', 129, 'e05d0fc1-322a-4a46-a475-4ed87b8bdb96', '{
  "event": {
    "id": "e05d0fc1-322a-4a46-a475-4ed87b8bdb96",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-08 08:38:35.806+00', 133, '17af46ef-3395-4357-899f-17d6f813a551', '{
  "event": {
    "id": "17af46ef-3395-4357-899f-17d6f813a551",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-08 08:38:35.806+00', 123, 'e048d9c2-a15f-45ce-be18-022dadf3919a', '{
  "event": {
    "id": "e048d9c2-a15f-45ce-be18-022dadf3919a",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-04 08:27:46.173+00', 67, '32557171-fe4d-424a-8e15-550956beb54b', '{
  "event": {
    "id": "32557171-fe4d-424a-8e15-550956beb54b",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-04 08:27:46.173+00', 68, '06ab52f9-93b9-4050-bfa6-8892f0a80ad6', '{
  "event": {
    "id": "06ab52f9-93b9-4050-bfa6-8892f0a80ad6",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-08 08:38:35.806+00', 120, '87e84d94-fd3b-4e50-955d-2290240f4fde', '{
  "event": {
    "id": "87e84d94-fd3b-4e50-955d-2290240f4fde",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-08 08:38:35.806+00', 110, 'b8f873ae-1af7-4569-a75a-6756b8a8d51e', '{
  "event": {
    "id": "b8f873ae-1af7-4569-a75a-6756b8a8d51e",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-08 08:38:35.806+00', 142, 'e0b3e10a-240a-4a9b-9d15-9d5663d51356', '{
  "event": {
    "id": "e0b3e10a-240a-4a9b-9d15-9d5663d51356",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-08 08:38:35.806+00', 144, '6fc87335-fb0b-43ab-80a4-d237bffac2c8', '{
  "event": {
    "id": "6fc87335-fb0b-43ab-80a4-d237bffac2c8",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-08 08:38:35.806+00', 143, '253d24e7-4807-4879-bdaa-2419a36e50dd', '{
  "event": {
    "id": "253d24e7-4807-4879-bdaa-2419a36e50dd",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-08 08:38:35.806+00', 127, '77f5d821-460b-4b96-ae23-3855d2e32204', '{
  "event": {
    "id": "77f5d821-460b-4b96-ae23-3855d2e32204",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-08 08:38:35.806+00', 113, '68045f93-23c0-42f4-ac46-d09b8a8e7101', '{
  "event": {
    "id": "68045f93-23c0-42f4-ac46-d09b8a8e7101",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-08 08:38:35.806+00', 111, '79af07a9-1830-4f95-8b3a-d4c5fcf77e06', '{
  "event": {
    "id": "79af07a9-1830-4f95-8b3a-d4c5fcf77e06",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-08 08:38:35.806+00', 128, '7c1ae96e-ca4d-46a3-91f5-58932e3fe94e', '{
  "event": {
    "id": "7c1ae96e-ca4d-46a3-91f5-58932e3fe94e",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-08 08:38:35.806+00', 139, 'e0c42806-50b3-4150-b096-b97f686aeecb', '{
  "event": {
    "id": "e0c42806-50b3-4150-b096-b97f686aeecb",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-08 08:38:35.806+00', 99, 'de17512f-a570-456f-aff4-312f07eff966', '{
  "event": {
    "id": "de17512f-a570-456f-aff4-312f07eff966",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-02 08:28:08.974+00', 17, '29b7123b-36f4-4bac-b8e1-954d4b324f55', '{
  "event": {
    "id": "29b7123b-36f4-4bac-b8e1-954d4b324f55",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-02 08:28:08.974+00', 18, '651b1789-5baf-4454-939e-9e42234e457f', '{
  "event": {
    "id": "651b1789-5baf-4454-939e-9e42234e457f",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-04 08:27:46.173+00', 7, '7adba9ec-3d78-4c15-ab9e-6813b8414a23', '{
  "event": {
    "id": "7adba9ec-3d78-4c15-ab9e-6813b8414a23",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-04 08:27:46.173+00', 13, '034065b3-dc13-4291-a6f8-613cb233e94e', '{
  "event": {
    "id": "034065b3-dc13-4291-a6f8-613cb233e94e",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-04 08:27:46.173+00', 11, 'ef36dc48-ec4e-4451-9622-24ab0baa05b6', '{
  "event": {
    "id": "ef36dc48-ec4e-4451-9622-24ab0baa05b6",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-08 08:38:35.806+00', 117, '3ac3eb73-6890-495e-92b6-f14d13dbe25a', '{
  "event": {
    "id": "3ac3eb73-6890-495e-92b6-f14d13dbe25a",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-08 08:38:35.806+00', 130, '5491d496-ba42-4bce-9703-cc3fb479f5a9', '{
  "event": {
    "id": "5491d496-ba42-4bce-9703-cc3fb479f5a9",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-08 08:38:35.806+00', 104, '9e5e00bb-b865-4971-a588-c26f4cabe459', '{
  "event": {
    "id": "9e5e00bb-b865-4971-a588-c26f4cabe459",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-08 08:38:35.806+00', 136, '25829948-1333-487a-8aaa-b2d4e4979da5', '{
  "event": {
    "id": "25829948-1333-487a-8aaa-b2d4e4979da5",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-08 08:38:35.806+00', 125, '9d74e1bd-7864-4db7-b1c3-489a9ce1b7a4', '{
  "event": {
    "id": "9d74e1bd-7864-4db7-b1c3-489a9ce1b7a4",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-08 08:38:35.806+00', 106, '7b5ec8c2-f322-4d3b-a11a-95dab086b3a6', '{
  "event": {
    "id": "7b5ec8c2-f322-4d3b-a11a-95dab086b3a6",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-08 08:38:35.806+00', 126, '101b04ab-16ef-44dd-bcc2-33f7e9c2a4ab', '{
  "event": {
    "id": "101b04ab-16ef-44dd-bcc2-33f7e9c2a4ab",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-08 08:38:35.806+00', 100, '90d01d3e-ce01-4de8-8240-285220dcec08', '{
  "event": {
    "id": "90d01d3e-ce01-4de8-8240-285220dcec08",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-08 08:38:35.806+00', 109, '34839ef4-a6bf-458b-8d78-6f1ca4cbdf62', '{
  "event": {
    "id": "34839ef4-a6bf-458b-8d78-6f1ca4cbdf62",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-08 08:38:35.806+00', 134, 'ed28571d-a99b-41f2-83f9-535fdd9a61de', '{
  "event": {
    "id": "ed28571d-a99b-41f2-83f9-535fdd9a61de",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-08 08:38:35.806+00', 141, '7098d8c7-afd2-4160-b1a6-0f7bdc74b5cc', '{
  "event": {
    "id": "7098d8c7-afd2-4160-b1a6-0f7bdc74b5cc",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-08 08:38:35.806+00', 96, 'c670f30a-19eb-464d-bdb6-d60c20ea1070', '{
  "event": {
    "id": "c670f30a-19eb-464d-bdb6-d60c20ea1070",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-08 08:38:35.806+00', 108, 'cf2ac4c5-c881-4ea5-9607-cb9a6cd361e3', '{
  "event": {
    "id": "cf2ac4c5-c881-4ea5-9607-cb9a6cd361e3",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-08 08:38:35.806+00', 116, 'b86ff9ff-c60f-4c04-8e0b-697db60c90af', '{
  "event": {
    "id": "b86ff9ff-c60f-4c04-8e0b-697db60c90af",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-08 08:38:35.806+00', 102, '5372371b-1ad0-4222-a16c-8d90adfa61e4', '{
  "event": {
    "id": "5372371b-1ad0-4222-a16c-8d90adfa61e4",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-08 08:38:35.806+00', 114, '62ef7ac1-8398-4998-9bde-b1815113a0cc', '{
  "event": {
    "id": "62ef7ac1-8398-4998-9bde-b1815113a0cc",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-08 08:38:35.806+00', 115, '9ea0723b-e114-43b6-9305-7a40b8866a28', '{
  "event": {
    "id": "9ea0723b-e114-43b6-9305-7a40b8866a28",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-08 08:38:35.806+00', 135, '63e20c1f-922f-463a-ab67-b6b5f0bf20c2', '{
  "event": {
    "id": "63e20c1f-922f-463a-ab67-b6b5f0bf20c2",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-08 08:38:35.806+00', 107, 'cd88ed47-aac5-4248-ad78-d550b5c8a3bf', '{
  "event": {
    "id": "cd88ed47-aac5-4248-ad78-d550b5c8a3bf",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-29 08:39:26.053+00', 188, 'c2f64320-5177-4f79-bcf4-36a0d5f72cf3', '{
  "event": {
    "id": "c2f64320-5177-4f79-bcf4-36a0d5f72cf3",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-29 08:39:26.053+00', 180, 'fe30cbfd-47bf-4e3e-9349-de400e41a604', '{
  "event": {
    "id": "fe30cbfd-47bf-4e3e-9349-de400e41a604",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-29 08:39:26.053+00', 171, 'de764e7a-4552-4820-81aa-922fad9f7cad', '{
  "event": {
    "id": "de764e7a-4552-4820-81aa-922fad9f7cad",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-29 08:39:26.053+00', 157, '6c251b30-774d-454b-8893-b9e3a94d9f42', '{
  "event": {
    "id": "6c251b30-774d-454b-8893-b9e3a94d9f42",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-29 08:39:26.053+00', 170, 'deb27d3a-46f4-40c2-918f-73845c94e9a3', '{
  "event": {
    "id": "deb27d3a-46f4-40c2-918f-73845c94e9a3",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-29 08:39:26.053+00', 189, '828d539d-b5e0-414e-9bb0-d7ab1aa10dca', '{
  "event": {
    "id": "828d539d-b5e0-414e-9bb0-d7ab1aa10dca",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-29 08:39:26.053+00', 175, '604d1e31-9ef3-4e6b-a202-6e4eb144e5e9', '{
  "event": {
    "id": "604d1e31-9ef3-4e6b-a202-6e4eb144e5e9",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-07 08:28:41.818+00', 44, 'fec347d2-c5c1-4c68-b31e-78d891a0ac55', '{
  "event": {
    "id": "fec347d2-c5c1-4c68-b31e-78d891a0ac55",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-07 08:28:41.818+00', 48, '160350b8-87a9-4309-b6a5-f540e7672dad', '{
  "event": {
    "id": "160350b8-87a9-4309-b6a5-f540e7672dad",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-07 08:28:41.818+00', 46, 'e8080c64-72f2-4aa7-a034-ab26187d2403', '{
  "event": {
    "id": "e8080c64-72f2-4aa7-a034-ab26187d2403",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-07 08:28:41.818+00', 47, 'b5d986b4-d51b-4179-bd5b-75484a67209f', '{
  "event": {
    "id": "b5d986b4-d51b-4179-bd5b-75484a67209f",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-07 08:28:41.818+00', 42, '2811a4e6-96f7-4f85-938a-92c2c7cdc858', '{
  "event": {
    "id": "2811a4e6-96f7-4f85-938a-92c2c7cdc858",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-07 08:28:41.818+00', 50, '9ee3dcf4-e945-4db8-b8fb-45156806033e', '{
  "event": {
    "id": "9ee3dcf4-e945-4db8-b8fb-45156806033e",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-29 08:39:26.053+00', 186, '00de38fa-172f-4ea6-b5af-c43b20f8bb1c', '{
  "event": {
    "id": "00de38fa-172f-4ea6-b5af-c43b20f8bb1c",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-29 08:39:26.053+00', 159, 'f0599903-a6bb-4574-8f58-081ed21051ff', '{
  "event": {
    "id": "f0599903-a6bb-4574-8f58-081ed21051ff",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-29 08:39:26.053+00', 181, '79924293-fe87-4a2d-902f-2fedec7532cb', '{
  "event": {
    "id": "79924293-fe87-4a2d-902f-2fedec7532cb",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-29 08:39:26.053+00', 161, '61c700e5-071d-4c22-9383-860b3766fb6d', '{
  "event": {
    "id": "61c700e5-071d-4c22-9383-860b3766fb6d",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-29 08:39:26.053+00', 174, 'a0ffb95f-8271-4e50-bcde-feb04a1ee965', '{
  "event": {
    "id": "a0ffb95f-8271-4e50-bcde-feb04a1ee965",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-29 08:39:26.053+00', 179, '5e89a055-d107-4232-a98a-2634deb67e54', '{
  "event": {
    "id": "5e89a055-d107-4232-a98a-2634deb67e54",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-29 08:39:26.053+00', 166, '31385619-cd0f-4606-87cf-1ac265c46ddb', '{
  "event": {
    "id": "31385619-cd0f-4606-87cf-1ac265c46ddb",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-29 08:39:26.053+00', 158, '2d716e6b-5a73-4ac7-ab66-98bda2530f85', '{
  "event": {
    "id": "2d716e6b-5a73-4ac7-ab66-98bda2530f85",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-29 08:39:26.053+00', 155, 'd22b3500-ac83-4d5a-a4fe-46b89ebdba82', '{
  "event": {
    "id": "d22b3500-ac83-4d5a-a4fe-46b89ebdba82",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-29 08:39:26.053+00', 187, 'ac65ea9e-4648-4280-9573-996c07764b0e', '{
  "event": {
    "id": "ac65ea9e-4648-4280-9573-996c07764b0e",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-29 08:39:26.053+00', 183, '10ad22f0-fb87-44d7-b8d4-944da1b58ffd', '{
  "event": {
    "id": "10ad22f0-fb87-44d7-b8d4-944da1b58ffd",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-29 08:39:26.053+00', 160, 'ea36d11a-fc95-4465-b6c5-133965c5c1c4', '{
  "event": {
    "id": "ea36d11a-fc95-4465-b6c5-133965c5c1c4",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-29 08:39:26.053+00', 178, '5655928e-b3e5-4675-be1b-b712028f50b2', '{
  "event": {
    "id": "5655928e-b3e5-4675-be1b-b712028f50b2",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-29 08:39:26.053+00', 169, 'e3472e6b-0079-4473-a35c-b2ba08a5ca87', '{
  "event": {
    "id": "e3472e6b-0079-4473-a35c-b2ba08a5ca87",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-29 08:39:26.053+00', 148, '0f333d4f-110c-4644-9676-da49f6c52318', '{
  "event": {
    "id": "0f333d4f-110c-4644-9676-da49f6c52318",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-29 08:39:26.053+00', 190, '96c2b117-1a61-4702-b87d-1c69d9a83901', '{
  "event": {
    "id": "96c2b117-1a61-4702-b87d-1c69d9a83901",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-29 08:39:26.053+00', 156, '4f08236e-f7d6-45b4-a489-fbd476ef8b57', '{
  "event": {
    "id": "4f08236e-f7d6-45b4-a489-fbd476ef8b57",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-29 08:39:26.053+00', 185, '452ecbde-a158-4751-ba78-065dc782ebbc', '{
  "event": {
    "id": "452ecbde-a158-4751-ba78-065dc782ebbc",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-29 08:39:26.053+00', 173, '5375d337-4805-41ad-8a0b-8723f5168a95', '{
  "event": {
    "id": "5375d337-4805-41ad-8a0b-8723f5168a95",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-29 08:39:26.053+00', 177, '3c7ea89d-36fc-4371-8e72-9cf6e21cbc11', '{
  "event": {
    "id": "3c7ea89d-36fc-4371-8e72-9cf6e21cbc11",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-29 08:39:26.053+00', 184, '5d296d4c-b1da-49fc-a6d1-fddf1a199ab5', '{
  "event": {
    "id": "5d296d4c-b1da-49fc-a6d1-fddf1a199ab5",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-29 08:39:26.053+00', 146, 'b1f20eef-cd1c-4066-a793-9ec47aefb65f', '{
  "event": {
    "id": "b1f20eef-cd1c-4066-a793-9ec47aefb65f",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-29 08:39:26.053+00', 168, 'e5caa54f-5dee-46a1-a923-95a13248ea1e', '{
  "event": {
    "id": "e5caa54f-5dee-46a1-a923-95a13248ea1e",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-29 08:39:26.053+00', 151, '73ec3d59-bd6e-43ce-944c-2995760cedc0', '{
  "event": {
    "id": "73ec3d59-bd6e-43ce-944c-2995760cedc0",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-29 08:39:26.053+00', 165, 'd575df0d-1348-46ed-9812-c12ff9517873', '{
  "event": {
    "id": "d575df0d-1348-46ed-9812-c12ff9517873",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-29 08:39:26.053+00', 167, '42158438-6146-4837-8868-6cc912046630', '{
  "event": {
    "id": "42158438-6146-4837-8868-6cc912046630",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-11 08:30:00.359+00', 80, '88f03595-9683-4207-865d-8ab5706e1c9a', '{
  "event": {
    "id": "88f03595-9683-4207-865d-8ab5706e1c9a",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-11 08:30:00.359+00', 78, '64d72868-923c-4dd0-9626-1acc9c299b32', '{
  "event": {
    "id": "64d72868-923c-4dd0-9626-1acc9c299b32",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-11 08:30:00.359+00', 79, '7f9b7ef2-084d-4501-b699-029a2f265d77', '{
  "event": {
    "id": "7f9b7ef2-084d-4501-b699-029a2f265d77",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-11 08:30:00.359+00', 82, '38c74f1c-c20a-4992-b0b7-d804a46f1fd9', '{
  "event": {
    "id": "38c74f1c-c20a-4992-b0b7-d804a46f1fd9",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-11 08:30:00.359+00', 77, '828ef01b-2c19-43c2-90fd-e82f9d6f774d', '{
  "event": {
    "id": "828ef01b-2c19-43c2-90fd-e82f9d6f774d",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-11 08:30:00.359+00', 81, '088c236c-610e-419a-87bc-6de1ba75a265', '{
  "event": {
    "id": "088c236c-610e-419a-87bc-6de1ba75a265",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-29 08:39:26.053+00', 163, '0cfb8b99-1712-4a48-912c-a7bc24849819', '{
  "event": {
    "id": "0cfb8b99-1712-4a48-912c-a7bc24849819",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-29 08:39:26.053+00', 176, '19019429-16bc-40b1-a33e-d4e9a930b4a4', '{
  "event": {
    "id": "19019429-16bc-40b1-a33e-d4e9a930b4a4",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-29 08:39:26.053+00', 152, '0b25a9b7-9aeb-4b9a-8c52-6e00ea77c9de', '{
  "event": {
    "id": "0b25a9b7-9aeb-4b9a-8c52-6e00ea77c9de",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-29 08:39:26.053+00', 164, '85e025d2-2769-4431-a755-73cf6ffc8d44', '{
  "event": {
    "id": "85e025d2-2769-4431-a755-73cf6ffc8d44",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-29 08:39:26.053+00', 182, '637838bc-8f0a-4d27-a369-9f3ef008d780', '{
  "event": {
    "id": "637838bc-8f0a-4d27-a369-9f3ef008d780",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-29 08:39:26.053+00', 162, 'f0ba51d5-6da4-4ae8-ad40-e679960dd4fa', '{
  "event": {
    "id": "f0ba51d5-6da4-4ae8-ad40-e679960dd4fa",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-29 08:39:26.053+00', 172, '03b52002-5fc7-49ed-a1d9-e423133e3999', '{
  "event": {
    "id": "03b52002-5fc7-49ed-a1d9-e423133e3999",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-09 08:32:57.71+00', 29, '7f8b8043-3e13-45a6-b88a-d9c822689aca', '{
  "event": {
    "id": "7f8b8043-3e13-45a6-b88a-d9c822689aca",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-09 08:32:57.71+00', 20, '5738fa10-2227-4a19-a93c-f4173ac3115a', '{
  "event": {
    "id": "5738fa10-2227-4a19-a93c-f4173ac3115a",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-09 08:32:57.71+00', 17, '9158a652-f5b4-4e97-87ae-32d0bf66abb1', '{
  "event": {
    "id": "9158a652-f5b4-4e97-87ae-32d0bf66abb1",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-09 08:32:57.71+00', 26, '31120682-8af9-4a93-8a70-b11f17c2f064', '{
  "event": {
    "id": "31120682-8af9-4a93-8a70-b11f17c2f064",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-09 08:32:57.71+00', 19, '447ac426-d157-4ec5-b32b-6cf3d50d6da0', '{
  "event": {
    "id": "447ac426-d157-4ec5-b32b-6cf3d50d6da0",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-09 08:32:57.71+00', 25, '2706dc1a-7a87-4012-bec3-d4e4e267bcaf', '{
  "event": {
    "id": "2706dc1a-7a87-4012-bec3-d4e4e267bcaf",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-09 08:32:57.71+00', 34, '6336565a-65c6-4bda-8e49-88811ee6186e', '{
  "event": {
    "id": "6336565a-65c6-4bda-8e49-88811ee6186e",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-09 08:32:57.71+00', 24, 'c6f55061-e585-47a1-bcdb-00a9fa56a2c5', '{
  "event": {
    "id": "c6f55061-e585-47a1-bcdb-00a9fa56a2c5",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-09 08:32:57.71+00', 22, '412ca299-d567-497c-9c18-c3fb650e32e2', '{
  "event": {
    "id": "412ca299-d567-497c-9c18-c3fb650e32e2",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-09 08:32:57.71+00', 30, 'fd98bdcc-c49b-407e-b354-bfccc9a18622', '{
  "event": {
    "id": "fd98bdcc-c49b-407e-b354-bfccc9a18622",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-09 08:32:57.71+00', 32, '2a200225-e05b-4393-826f-5b3d460c2e4f', '{
  "event": {
    "id": "2a200225-e05b-4393-826f-5b3d460c2e4f",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-09 08:32:57.71+00', 31, 'dce44c8a-93d1-4a06-a58e-8eec10598f62', '{
  "event": {
    "id": "dce44c8a-93d1-4a06-a58e-8eec10598f62",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-09 08:32:57.71+00', 21, '22790b45-2f90-404c-95ed-3affc7cb1b54', '{
  "event": {
    "id": "22790b45-2f90-404c-95ed-3affc7cb1b54",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-09 08:32:57.71+00', 35, 'b46fd530-e2f4-48a3-9dcb-b539759b9690', '{
  "event": {
    "id": "b46fd530-e2f4-48a3-9dcb-b539759b9690",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('hatico', 'Snickers', '2019-11-30 08:52:33.707354+00', 1, 'b3a8d1b0-1702-4d3b-8a6f-0b33796c08c8', '{
  "event": {
    "id": "b3a8d1b0-1702-4d3b-8a6f-0b33796c08c8",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('hatico', 'Snickers', '2019-11-30 08:53:08.4577+00', 24, '1a9d6fd8-37c3-4509-a25b-ad9eb093699b', '{
  "event": {
    "id": "1a9d6fd8-37c3-4509-a25b-ad9eb093699b",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('hatico', 'Snickers', '2019-11-30 08:53:57.308112+00', 47, '6db4f217-05e3-4785-bb63-44819324fd99', '{
  "event": {
    "id": "6db4f217-05e3-4785-bb63-44819324fd99",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('hatico', 'Snickers', '2019-11-14 08:54:04.734+00', 70, '9589e5c6-2369-4221-a1e1-3e8341f45d34', '{
  "event": {
    "id": "9589e5c6-2369-4221-a1e1-3e8341f45d34",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-30 09:01:42.14933+00', 20, '32bd32cb-8ce6-4349-a2e1-5b397c029170', '{
  "event": {
    "id": "32bd32cb-8ce6-4349-a2e1-5b397c029170",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-30 09:02:00.694726+00', 42, 'e87634bc-35a1-45a4-94c6-4bd1f7fb54a5', '{
  "event": {
    "id": "e87634bc-35a1-45a4-94c6-4bd1f7fb54a5",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-30 09:02:21.510322+00', 63, '78c943b6-f6c8-48bf-aa1e-43b519ee753a', '{
  "event": {
    "id": "78c943b6-f6c8-48bf-aa1e-43b519ee753a",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-16 08:31:08.566+00', 114, 'd8711844-e241-4056-bc55-ee5dba33e785', '{
  "event": {
    "id": "d8711844-e241-4056-bc55-ee5dba33e785",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-16 08:31:08.566+00', 113, 'e6edb346-abca-4058-a7fb-a62a32bf0dc9', '{
  "event": {
    "id": "e6edb346-abca-4058-a7fb-a62a32bf0dc9",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-16 08:31:08.566+00', 112, '0202d067-d822-455e-bc14-bea7c7a2f2dd', '{
  "event": {
    "id": "0202d067-d822-455e-bc14-bea7c7a2f2dd",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('hatico', 'Snickers', '2019-11-30 08:52:48.339441+00', 2, '9960cde4-435b-4597-8572-2b83fa350928', '{
  "event": {
    "id": "9960cde4-435b-4597-8572-2b83fa350928",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('hatico', 'Snickers', '2019-11-30 08:53:09.331598+00', 25, 'f39cc224-d4ae-48de-a923-77229a53b27a', '{
  "event": {
    "id": "f39cc224-d4ae-48de-a923-77229a53b27a",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('hatico', 'Snickers', '2019-11-30 08:53:58.085474+00', 48, '149a45bc-af15-4fd5-9138-b9bc6505ce47', '{
  "event": {
    "id": "149a45bc-af15-4fd5-9138-b9bc6505ce47",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('hatico', 'Snickers', '2019-11-14 08:54:04.734+00', 71, 'da22c94c-1cd7-4fdc-90c0-cef0d0664b9f', '{
  "event": {
    "id": "da22c94c-1cd7-4fdc-90c0-cef0d0664b9f",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-30 09:01:42.92898+00', 21, '638c85cc-2c69-4dd5-ac6e-b149093e5e7f', '{
  "event": {
    "id": "638c85cc-2c69-4dd5-ac6e-b149093e5e7f",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-30 09:02:01.546784+00', 43, 'd64ce61d-db78-4935-b531-49dff7e6575f', '{
  "event": {
    "id": "d64ce61d-db78-4935-b531-49dff7e6575f",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-30 09:02:22.188971+00', 64, '3cd3ffc5-2d6a-4c42-a781-1aaf3dbc51e9', '{
  "event": {
    "id": "3cd3ffc5-2d6a-4c42-a781-1aaf3dbc51e9",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-27 09:02:55.958+00', 105, '33fd85f6-5fb4-4cba-9f70-68eed9e0d738', '{
  "event": {
    "id": "33fd85f6-5fb4-4cba-9f70-68eed9e0d738",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-26 09:02:29.418+00', 85, '2e8d9f7a-ed7b-459e-8f16-4d06b0312cdb', '{
  "event": {
    "id": "2e8d9f7a-ed7b-459e-8f16-4d06b0312cdb",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Bloom', '2019-11-30 09:19:42.770088+00', 2, '4d1ed04d-25af-4089-93fb-4a9e63674949', '{
  "event": {
    "id": "4d1ed04d-25af-4089-93fb-4a9e63674949",
    "name": "Bloom",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Blaam', '2019-11-28 09:20:45.141+00', 11, '35fd41e2-1d3e-4948-aec6-a300060aee83', '{
  "event": {
    "id": "35fd41e2-1d3e-4948-aec6-a300060aee83",
    "name": "Blaam",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Bluum', '2019-11-28 09:20:45.141+00', 12, '85e43cb7-d5ce-4fc1-bbdf-1bfaab1d91fa', '{
  "event": {
    "id": "85e43cb7-d5ce-4fc1-bbdf-1bfaab1d91fa",
    "name": "Bluum",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('hatico', 'Snickers', '2019-11-30 08:52:49.887672+00', 3, '30f32c6e-75be-437b-916b-878721bb20c5', '{
  "event": {
    "id": "30f32c6e-75be-437b-916b-878721bb20c5",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('hatico', 'Snickers', '2019-11-30 08:53:10.235112+00', 26, 'ad72a7dc-2719-4686-ac28-750e4ad497b0', '{
  "event": {
    "id": "ad72a7dc-2719-4686-ac28-750e4ad497b0",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('hatico', 'Snickers', '2019-11-30 08:53:58.851474+00', 49, 'd88b4875-700c-47b5-a492-f952bbadb412', '{
  "event": {
    "id": "d88b4875-700c-47b5-a492-f952bbadb412",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('hatico', 'Snickers', '2019-11-14 08:54:04.734+00', 72, 'e19dae30-8b83-48e6-aa73-b4a5570b8cda', '{
  "event": {
    "id": "e19dae30-8b83-48e6-aa73-b4a5570b8cda",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-30 09:01:43.82952+00', 22, 'df572287-c9e6-46e7-9a85-290fbd48984d', '{
  "event": {
    "id": "df572287-c9e6-46e7-9a85-290fbd48984d",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-30 09:02:02.382933+00', 44, 'f8172c00-3309-42a3-8991-3d9c6ffe5fcc', '{
  "event": {
    "id": "f8172c00-3309-42a3-8991-3d9c6ffe5fcc",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-30 09:02:22.818214+00', 65, '7aebdcc0-efa4-448f-9195-682edde62616', '{
  "event": {
    "id": "7aebdcc0-efa4-448f-9195-682edde62616",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-27 09:02:55.958+00', 106, '68389575-42cc-4a12-8c83-4aaf4c47fff1', '{
  "event": {
    "id": "68389575-42cc-4a12-8c83-4aaf4c47fff1",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-26 09:02:29.418+00', 86, '41cb0900-fe78-4c65-bc0f-9e0f9ef044d2', '{
  "event": {
    "id": "41cb0900-fe78-4c65-bc0f-9e0f9ef044d2",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Bloom', '2019-11-30 09:19:43.546256+00', 3, '1aa11860-e2d0-44cc-b0e8-4c30c9670ddb', '{
  "event": {
    "id": "1aa11860-e2d0-44cc-b0e8-4c30c9670ddb",
    "name": "Bloom",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Bliim', '2019-11-28 09:20:45.141+00', 1, 'c1d3d747-4d92-4e7f-ac7f-b052ac6e2a54', '{
  "event": {
    "id": "c1d3d747-4d92-4e7f-ac7f-b052ac6e2a54",
    "name": "Bliim",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Bluum', '2019-11-28 09:20:45.141+00', 1, 'f9a85986-a4a6-4c7e-ace9-60993fd54b1f', '{
  "event": {
    "id": "f9a85986-a4a6-4c7e-ace9-60993fd54b1f",
    "name": "Bluum",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('hatico', 'Snickers', '2019-11-30 08:52:50.90167+00', 4, 'ce1af4e5-c93d-4ad6-a79f-1e291a581afb', '{
  "event": {
    "id": "ce1af4e5-c93d-4ad6-a79f-1e291a581afb",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('hatico', 'Snickers', '2019-11-30 08:53:11.042491+00', 27, 'b5056bd0-0a25-4d40-a272-ee7754065d2b', '{
  "event": {
    "id": "b5056bd0-0a25-4d40-a272-ee7754065d2b",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('hatico', 'Snickers', '2019-11-30 08:53:59.708255+00', 50, 'cf208fb0-32cf-4b09-b11e-814997a147f9', '{
  "event": {
    "id": "cf208fb0-32cf-4b09-b11e-814997a147f9",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('hatico', 'Snickers', '2019-11-14 08:54:04.734+00', 73, '41335834-4b02-4efb-aa1b-b7e3c3de83af', '{
  "event": {
    "id": "41335834-4b02-4efb-aa1b-b7e3c3de83af",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-30 09:01:44.67243+00', 23, '237bdaf6-3554-41e3-9fef-806d6c5f6182', '{
  "event": {
    "id": "237bdaf6-3554-41e3-9fef-806d6c5f6182",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-30 09:02:03.15694+00', 45, '6d68fe9c-1f08-4dbe-85de-a3f096032d3e', '{
  "event": {
    "id": "6d68fe9c-1f08-4dbe-85de-a3f096032d3e",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-30 09:02:23.452629+00', 66, '3338e6b4-7b2d-453d-9ec7-1c9142494a91', '{
  "event": {
    "id": "3338e6b4-7b2d-453d-9ec7-1c9142494a91",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-27 09:02:55.958+00', 107, '01bb66e5-e289-4dc9-9e52-57b3a2fb2ae3', '{
  "event": {
    "id": "01bb66e5-e289-4dc9-9e52-57b3a2fb2ae3",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-26 09:02:29.418+00', 87, 'de16460c-1311-454c-90e9-19099275cbdb', '{
  "event": {
    "id": "de16460c-1311-454c-90e9-19099275cbdb",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Bloom', '2019-11-30 09:19:44.455838+00', 4, '64401daa-5569-46f8-9f75-91934192fcd2', '{
  "event": {
    "id": "64401daa-5569-46f8-9f75-91934192fcd2",
    "name": "Bloom",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Bliim', '2019-11-28 09:20:45.141+00', 2, '4154fc66-122e-4162-ae0e-31fffa4354a3', '{
  "event": {
    "id": "4154fc66-122e-4162-ae0e-31fffa4354a3",
    "name": "Bliim",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Bluum', '2019-11-28 09:20:45.141+00', 2, '6f0aa925-3524-4289-9691-efee8da8e610', '{
  "event": {
    "id": "6f0aa925-3524-4289-9691-efee8da8e610",
    "name": "Bluum",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('hatico', 'Snickers', '2019-11-30 08:52:51.849587+00', 5, 'ccaaa23f-6474-4082-abcf-8bf012755893', '{
  "event": {
    "id": "ccaaa23f-6474-4082-abcf-8bf012755893",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('hatico', 'Snickers', '2019-11-30 08:53:11.958809+00', 28, 'b4db3069-75e5-4f6f-8144-f4a03acf1394', '{
  "event": {
    "id": "b4db3069-75e5-4f6f-8144-f4a03acf1394",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('hatico', 'Snickers', '2019-11-30 08:54:00.440908+00', 51, 'e5cc29ec-5865-4e21-b3da-2b57885c9dbc', '{
  "event": {
    "id": "e5cc29ec-5865-4e21-b3da-2b57885c9dbc",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-30 08:56:33.386738+00', 1, '04d694f0-2065-4e68-8be7-b5d5e5eabd75', '{
  "event": {
    "id": "04d694f0-2065-4e68-8be7-b5d5e5eabd75",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-30 09:01:45.506862+00', 24, '7dbe18b2-843f-4ea1-b08e-26c8b0c0b69e', '{
  "event": {
    "id": "7dbe18b2-843f-4ea1-b08e-26c8b0c0b69e",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-30 09:02:03.939668+00', 46, 'a82eb278-af7f-483e-b0f9-6080e5ebee13', '{
  "event": {
    "id": "a82eb278-af7f-483e-b0f9-6080e5ebee13",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-30 09:02:24.051794+00', 67, '642549ff-d9cf-466f-a57a-5a87a8864541', '{
  "event": {
    "id": "642549ff-d9cf-466f-a57a-5a87a8864541",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-27 09:02:55.958+00', 108, '61ceb3d8-e175-4428-82e6-214c3676dac4', '{
  "event": {
    "id": "61ceb3d8-e175-4428-82e6-214c3676dac4",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-26 09:02:29.418+00', 88, '726431ef-15c8-4f72-a437-2a30a4dcd465', '{
  "event": {
    "id": "726431ef-15c8-4f72-a437-2a30a4dcd465",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Bloom', '2019-11-30 09:19:45.117491+00', 5, '375f6432-174d-43f0-bdd9-09fd34d2d556', '{
  "event": {
    "id": "375f6432-174d-43f0-bdd9-09fd34d2d556",
    "name": "Bloom",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-30 08:31:09.483119+00', 175, '79836a53-13b8-4ad0-ae1b-8c9c813620c2', '{
  "event": {
    "id": "79836a53-13b8-4ad0-ae1b-8c9c813620c2",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nina-von-c', 'Snickers', '2019-11-20 08:21:42.147+00', 7, 'baa1c0ab-ca64-4f74-aeea-7b5a8e2d759b', '{
  "event": {
    "id": "baa1c0ab-ca64-4f74-aeea-7b5a8e2d759b",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nina-von-c', 'Snickers', '2019-11-14 08:21:47.826+00', 16, '39eb9c58-3bf8-4a38-81a1-f36a9915c134', '{
  "event": {
    "id": "39eb9c58-3bf8-4a38-81a1-f36a9915c134",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('codello', 'Snickers', '2019-11-20 08:19:38.221+00', 15, '75ff8e1d-8b38-4e6e-87df-4a01c6ffe69e', '{
  "event": {
    "id": "75ff8e1d-8b38-4e6e-87df-4a01c6ffe69e",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('codello', 'Snickers', '2019-11-13 08:19:36.101+00', 12, '7b02b140-5e35-4d78-8438-3936abbfeea8', '{
  "event": {
    "id": "7b02b140-5e35-4d78-8438-3936abbfeea8",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nina-von-c', 'Snickers', '2019-11-03 08:21:45.895+00', 13, '4c3f21e9-fa53-4781-b6f8-9eebbd75c73d', '{
  "event": {
    "id": "4c3f21e9-fa53-4781-b6f8-9eebbd75c73d",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nina-von-c', 'Snickers', '2019-11-14 08:21:37.691+00', 2, '2bac087c-3c75-4a25-8005-c84b2497d54c', '{
  "event": {
    "id": "2bac087c-3c75-4a25-8005-c84b2497d54c",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('codello', 'Snickers', '2019-11-14 08:19:31.785+00', 6, 'ed57625d-7f6a-46b4-8236-f06784b453ed', '{
  "event": {
    "id": "ed57625d-7f6a-46b4-8236-f06784b453ed",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('codello', 'Snickers', '2019-11-20 08:19:34.017+00', 9, 'e5cac227-e468-4db3-b3e9-cb2671c0f87b', '{
  "event": {
    "id": "e5cac227-e468-4db3-b3e9-cb2671c0f87b",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nina-von-c', 'Snickers', '2019-11-02 08:21:44.612+00', 11, '03d8e341-72b9-4f5d-b036-f27ab58effda', '{
  "event": {
    "id": "03d8e341-72b9-4f5d-b036-f27ab58effda",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('codello', 'Snickers', '2019-11-15 08:19:28.359+00', 2, 'db53abf4-b1d6-447d-b5a0-a3d117817105', '{
  "event": {
    "id": "db53abf4-b1d6-447d-b5a0-a3d117817105",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nina-von-c', 'Snickers', '2019-11-06 08:21:43.329+00', 9, 'd87e304b-1eaa-42ef-8f19-fc21f854d6b4', '{
  "event": {
    "id": "d87e304b-1eaa-42ef-8f19-fc21f854d6b4",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nina-von-c', 'Snickers', '2019-11-25 08:21:40.426+00', 5, '50e0170e-f2fc-4724-b865-67b75cb8fe65', '{
  "event": {
    "id": "50e0170e-f2fc-4724-b865-67b75cb8fe65",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('streamOne', 'ExampleEventOne', '2019-11-18 07:47:57.69+00', 1, 'bc6144d2-cb0c-4544-b3a8-374291b18823', '{"event":{"name":"ExampleEventOne","version":1},"system":{"id":"alv123","name":"codello alvine","time":"2019-09-06 13:58:12","timezone":"Europe/Berlin"},"trigger":{"type":"system","name":"/path/to/script.php"},"payload":{}}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('codello', 'Snickers', '2019-11-15 08:19:30.457+00', 4, 'b9ba3b9b-cfbe-452d-ae32-9d5580dbd4d6', '{
  "event": {
    "id": "b9ba3b9b-cfbe-452d-ae32-9d5580dbd4d6",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-30 08:32:28.530433+00', 1, 'ee45c59e-35d9-4a43-9a69-20c0f65a6dbc', '{
  "event": {
    "id": "ee45c59e-35d9-4a43-9a69-20c0f65a6dbc",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-30 08:32:44.690384+00', 2, '883dee34-5de9-482a-8dae-0b1b825a380e', '{
  "event": {
    "id": "883dee34-5de9-482a-8dae-0b1b825a380e",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-30 08:32:45.585198+00', 3, 'f792e0b1-8f76-4628-9e75-799e268bb5d3', '{
  "event": {
    "id": "f792e0b1-8f76-4628-9e75-799e268bb5d3",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-30 08:32:46.570735+00', 4, '81b25bd7-48fb-4471-b452-eed309143085', '{
  "event": {
    "id": "81b25bd7-48fb-4471-b452-eed309143085",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-30 08:32:47.399622+00', 5, '8d2dca0d-b26e-4d48-9c1b-21a2dfbeeab3', '{
  "event": {
    "id": "8d2dca0d-b26e-4d48-9c1b-21a2dfbeeab3",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-30 08:32:48.341627+00', 6, 'd0b1cb3c-9692-4c9d-9f5a-a5b0044b7c71', '{
  "event": {
    "id": "d0b1cb3c-9692-4c9d-9f5a-a5b0044b7c71",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-30 08:32:49.158612+00', 7, '3e842f13-5d0c-440c-82b7-850dac6afc92', '{
  "event": {
    "id": "3e842f13-5d0c-440c-82b7-850dac6afc92",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-30 08:32:50.146799+00', 8, '24d920f2-b0ab-4a6d-94d0-e1ee592bfdd9', '{
  "event": {
    "id": "24d920f2-b0ab-4a6d-94d0-e1ee592bfdd9",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-30 08:32:50.87537+00', 9, 'ebac2550-c0e3-4ea9-82b8-f40ab1bc804b', '{
  "event": {
    "id": "ebac2550-c0e3-4ea9-82b8-f40ab1bc804b",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-30 08:32:52.658239+00', 11, '866f3913-52ec-493e-8771-f8461fe20c26', '{
  "event": {
    "id": "866f3913-52ec-493e-8771-f8461fe20c26",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-30 08:32:53.44372+00', 12, '14fa384a-6898-4bf5-ad7d-dd13b7cff2b3', '{
  "event": {
    "id": "14fa384a-6898-4bf5-ad7d-dd13b7cff2b3",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-30 08:32:54.30151+00', 13, '512e9eba-8a7a-44e1-b093-2f64af2d0df5', '{
  "event": {
    "id": "512e9eba-8a7a-44e1-b093-2f64af2d0df5",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-30 08:32:55.114924+00', 14, '371a0ef5-aeee-4093-82af-b62658c4b53a', '{
  "event": {
    "id": "371a0ef5-aeee-4093-82af-b62658c4b53a",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-30 08:32:55.985486+00', 15, '09763686-1ca4-42cf-bcd9-00b65e8a4869', '{
  "event": {
    "id": "09763686-1ca4-42cf-bcd9-00b65e8a4869",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-30 08:32:56.731349+00', 16, 'ca03eb6d-e71a-4340-90e1-c8e96eaed51d', '{
  "event": {
    "id": "ca03eb6d-e71a-4340-90e1-c8e96eaed51d",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-10 08:32:51.847+00', 10, '8047e637-5c08-44ba-bbd4-b9e1b195c02d', '{
  "event": {
    "id": "8047e637-5c08-44ba-bbd4-b9e1b195c02d",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('hatico', 'Snickers', '2019-11-30 08:52:52.684577+00', 6, 'd3a0be33-2e1c-4fac-8a5a-d94ecffac813', '{
  "event": {
    "id": "d3a0be33-2e1c-4fac-8a5a-d94ecffac813",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('hatico', 'Snickers', '2019-11-30 08:53:12.82945+00', 29, '834702f3-0df5-4d82-953f-9f0368dccf97', '{
  "event": {
    "id": "834702f3-0df5-4d82-953f-9f0368dccf97",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('hatico', 'Snickers', '2019-11-30 08:54:01.380152+00', 52, 'b3dcb301-0723-4d8c-9ddf-49c71c470de7', '{
  "event": {
    "id": "b3dcb301-0723-4d8c-9ddf-49c71c470de7",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-30 08:56:47.969811+00', 2, '93333340-d1d7-4e58-8a45-ee87c532140e', '{
  "event": {
    "id": "93333340-d1d7-4e58-8a45-ee87c532140e",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-30 09:01:46.291756+00', 25, '7b84fecf-f928-4dd3-b085-287f033b9d1c', '{
  "event": {
    "id": "7b84fecf-f928-4dd3-b085-287f033b9d1c",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('hatico', 'Snickers', '2019-11-30 08:52:53.726679+00', 7, '4ba9c1fd-0903-4af6-be7e-d8e5cf68d2bb', '{
  "event": {
    "id": "4ba9c1fd-0903-4af6-be7e-d8e5cf68d2bb",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('hatico', 'Snickers', '2019-11-30 08:53:13.622995+00', 30, '58605a68-df54-41bb-acc7-0f907493b424', '{
  "event": {
    "id": "58605a68-df54-41bb-acc7-0f907493b424",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('hatico', 'Snickers', '2019-11-30 08:54:02.245185+00', 53, '951f99b5-eac8-48d6-82ec-2c0a55b1addb', '{
  "event": {
    "id": "951f99b5-eac8-48d6-82ec-2c0a55b1addb",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-30 08:56:48.88742+00', 3, '096f3b06-47bf-4a64-84b6-0171b753da95', '{
  "event": {
    "id": "096f3b06-47bf-4a64-84b6-0171b753da95",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-30 09:01:47.194897+00', 26, '26f5e9e5-ac07-4094-85f9-38a891b6fa19', '{
  "event": {
    "id": "26f5e9e5-ac07-4094-85f9-38a891b6fa19",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-30 09:02:04.801797+00', 47, '6ef8c0ed-a895-4c77-825b-aedcc5aed5e3', '{
  "event": {
    "id": "6ef8c0ed-a895-4c77-825b-aedcc5aed5e3",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-30 09:02:24.84079+00', 68, '8adbd7b7-3d60-47f9-bf4f-183e59366bfb', '{
  "event": {
    "id": "8adbd7b7-3d60-47f9-bf4f-183e59366bfb",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-27 09:02:55.958+00', 109, '506a1cd7-9d94-421e-bc50-965d14135356', '{
  "event": {
    "id": "506a1cd7-9d94-421e-bc50-965d14135356",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-26 09:02:29.418+00', 89, 'ae1313ac-155b-4456-879a-eaea15d7fd28', '{
  "event": {
    "id": "ae1313ac-155b-4456-879a-eaea15d7fd28",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Bloom', '2019-11-30 09:19:45.89567+00', 6, 'af78aea7-8e46-4e29-b39a-f4f61ebde543', '{
  "event": {
    "id": "af78aea7-8e46-4e29-b39a-f4f61ebde543",
    "name": "Bloom",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Bluum', '2019-11-28 09:20:45.141+00', 4, 'cf3bfad3-323d-48f6-994a-e21991f6701f', '{
  "event": {
    "id": "cf3bfad3-323d-48f6-994a-e21991f6701f",
    "name": "Bluum",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Bliim', '2019-11-28 09:20:45.141+00', 4, '66a3a765-a922-40e2-8ac5-fdecf7e4c119', '{
  "event": {
    "id": "66a3a765-a922-40e2-8ac5-fdecf7e4c119",
    "name": "Bliim",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-09 08:32:57.71+00', 39, '07941e10-27bc-49ac-acb1-a4ce1e22d62d', '{
  "event": {
    "id": "07941e10-27bc-49ac-acb1-a4ce1e22d62d",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-09 08:32:57.71+00', 43, '2a519973-ce9d-4abf-83aa-4dd5d5cfb9db', '{
  "event": {
    "id": "2a519973-ce9d-4abf-83aa-4dd5d5cfb9db",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-09 08:32:57.71+00', 42, '9a153482-91e5-4d83-b9af-9cfcb76406de', '{
  "event": {
    "id": "9a153482-91e5-4d83-b9af-9cfcb76406de",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-09 08:32:57.71+00', 45, '351e44c4-aea1-4ccc-a509-f3a7f8b514f6', '{
  "event": {
    "id": "351e44c4-aea1-4ccc-a509-f3a7f8b514f6",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-09 08:32:57.71+00', 40, 'fead25f5-882c-42a1-9a96-1617e0b43464', '{
  "event": {
    "id": "fead25f5-882c-42a1-9a96-1617e0b43464",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-09 08:32:57.71+00', 44, 'a47b4e5b-0301-4066-a52c-2fb9d8ba2134', '{
  "event": {
    "id": "a47b4e5b-0301-4066-a52c-2fb9d8ba2134",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-09 08:32:57.71+00', 38, '06030de6-299e-4ee5-b4d6-52ae51d31054', '{
  "event": {
    "id": "06030de6-299e-4ee5-b4d6-52ae51d31054",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-09 08:32:57.71+00', 41, 'b9efee5a-9be2-493b-8ef3-0120d0a22fcf', '{
  "event": {
    "id": "b9efee5a-9be2-493b-8ef3-0120d0a22fcf",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('hatico', 'Snickers', '2019-11-30 08:52:54.593014+00', 8, '87351d62-1dc8-427e-bfb3-147d831ea7f5', '{
  "event": {
    "id": "87351d62-1dc8-427e-bfb3-147d831ea7f5",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('hatico', 'Snickers', '2019-11-30 08:53:14.489736+00', 31, '94a86622-3fdd-4e63-9c31-b6975262c260', '{
  "event": {
    "id": "94a86622-3fdd-4e63-9c31-b6975262c260",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('hatico', 'Snickers', '2019-11-30 08:54:03.031348+00', 54, '177d4042-2818-44f3-9a50-a46bef8f3e08', '{
  "event": {
    "id": "177d4042-2818-44f3-9a50-a46bef8f3e08",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-30 08:56:49.666527+00', 4, '8ec6ff67-57e9-4969-b617-3974f51b87fc', '{
  "event": {
    "id": "8ec6ff67-57e9-4969-b617-3974f51b87fc",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-30 09:01:48.010693+00', 27, '6ccaba45-2c6f-455a-a4db-2ea8a506c05a', '{
  "event": {
    "id": "6ccaba45-2c6f-455a-a4db-2ea8a506c05a",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-30 09:02:05.494634+00', 48, '2e08ac49-0a4f-4ade-af04-e3f10f026ffe', '{
  "event": {
    "id": "2e08ac49-0a4f-4ade-af04-e3f10f026ffe",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-30 09:02:25.674745+00', 69, '2e29de96-607a-416c-a56c-8d27c9cb9f9e', '{
  "event": {
    "id": "2e29de96-607a-416c-a56c-8d27c9cb9f9e",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('hatico', 'Snickers', '2019-11-30 08:52:55.566314+00', 9, '28c0609c-68b3-4873-ab55-f494ffa69928', '{
  "event": {
    "id": "28c0609c-68b3-4873-ab55-f494ffa69928",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('hatico', 'Snickers', '2019-11-30 08:53:15.276638+00', 32, '2e384a7a-c084-465e-aacf-54756c5290f8', '{
  "event": {
    "id": "2e384a7a-c084-465e-aacf-54756c5290f8",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('hatico', 'Snickers', '2019-11-30 08:54:03.891397+00', 55, 'b49facd8-ae55-4784-863c-7f608a0b340a', '{
  "event": {
    "id": "b49facd8-ae55-4784-863c-7f608a0b340a",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-30 09:01:28.573593+00', 5, 'fae05d9b-102c-4822-83a7-040db4d7149a', '{
  "event": {
    "id": "fae05d9b-102c-4822-83a7-040db4d7149a",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-30 09:01:49.052239+00', 28, '436d86c2-d44b-4c89-be6e-48ff376753da', '{
  "event": {
    "id": "436d86c2-d44b-4c89-be6e-48ff376753da",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-30 09:02:06.321548+00', 49, '1cc95cce-8b7a-4d81-a3b0-0d75631016b5', '{
  "event": {
    "id": "1cc95cce-8b7a-4d81-a3b0-0d75631016b5",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-30 09:02:26.503908+00', 70, 'c56ecea5-2850-4146-8e41-250087ce0f47', '{
  "event": {
    "id": "c56ecea5-2850-4146-8e41-250087ce0f47",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-27 09:02:55.958+00', 110, 'dd40fbcf-895e-4f9a-a905-0b480e14126f', '{
  "event": {
    "id": "dd40fbcf-895e-4f9a-a905-0b480e14126f",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-26 09:02:29.418+00', 91, '71b0428e-0dda-430b-ac94-4a2293264c00', '{
  "event": {
    "id": "71b0428e-0dda-430b-ac94-4a2293264c00",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Bloom', '2019-11-30 09:19:46.637384+00', 7, '30bcec52-71c0-447e-bc98-37fd467a05a2', '{
  "event": {
    "id": "30bcec52-71c0-447e-bc98-37fd467a05a2",
    "name": "Bloom",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Bluum', '2019-11-28 09:20:45.141+00', 5, '077cc831-bf82-46c8-a215-18c3707071b4', '{
  "event": {
    "id": "077cc831-bf82-46c8-a215-18c3707071b4",
    "name": "Bluum",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Bliim', '2019-11-28 09:20:45.141+00', 5, 'a7657162-f598-426d-86d9-e440e99d6337', '{
  "event": {
    "id": "a7657162-f598-426d-86d9-e440e99d6337",
    "name": "Bliim",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('hatico', 'Snickers', '2019-11-30 08:52:56.40028+00', 10, '1a4bb7c8-6d53-477b-b9b4-535ba7b91cfb', '{
  "event": {
    "id": "1a4bb7c8-6d53-477b-b9b4-535ba7b91cfb",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('hatico', 'Snickers', '2019-11-30 08:53:16.305413+00', 33, '617c1083-7f85-4a91-9768-8af269efb8f0', '{
  "event": {
    "id": "617c1083-7f85-4a91-9768-8af269efb8f0",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('hatico', 'Snickers', '2019-11-14 08:54:04.734+00', 56, 'cb500831-1908-45a1-bdd9-8598b0e1d757', '{
  "event": {
    "id": "cb500831-1908-45a1-bdd9-8598b0e1d757",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-30 09:01:29.516998+00', 6, '81f7f3e4-f043-4a0a-94c8-7a5e0bd5f943', '{
  "event": {
    "id": "81f7f3e4-f043-4a0a-94c8-7a5e0bd5f943",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-30 09:01:49.847296+00', 29, '6fa578be-10fb-4713-855c-bb795d2f7cca', '{
  "event": {
    "id": "6fa578be-10fb-4713-855c-bb795d2f7cca",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-30 09:02:07.202818+00', 50, '29aa2aa2-34d5-4cc3-9712-4ecb1d8d5db4', '{
  "event": {
    "id": "29aa2aa2-34d5-4cc3-9712-4ecb1d8d5db4",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-30 09:02:27.211346+00', 71, '2878152f-6afd-46a2-aeec-67a64f4e8b32', '{
  "event": {
    "id": "2878152f-6afd-46a2-aeec-67a64f4e8b32",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-27 09:02:55.958+00', 111, '8e30750d-b78e-484b-be0f-cd4ae87941f4', '{
  "event": {
    "id": "8e30750d-b78e-484b-be0f-cd4ae87941f4",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-21 08:35:32.28+00', 85, '05d9c4c3-bb32-4ddc-86eb-8a32dcca8347', '{
  "event": {
    "id": "05d9c4c3-bb32-4ddc-86eb-8a32dcca8347",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-21 08:35:32.28+00', 77, '3b99d9cd-a892-4ec2-a22d-9b204a51bf79', '{
  "event": {
    "id": "3b99d9cd-a892-4ec2-a22d-9b204a51bf79",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-21 08:35:32.28+00', 80, '5b5cc5d4-e7f9-4d01-9193-41c777d1228b', '{
  "event": {
    "id": "5b5cc5d4-e7f9-4d01-9193-41c777d1228b",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-21 08:35:32.28+00', 83, '6eda958b-855c-4afa-85ec-ab9069b9b388', '{
  "event": {
    "id": "6eda958b-855c-4afa-85ec-ab9069b9b388",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('maerz', 'Snickers', '2019-11-21 08:35:32.28+00', 81, 'ca94ec37-2e8d-43b4-a41f-923ef712078a', '{
  "event": {
    "id": "ca94ec37-2e8d-43b4-a41f-923ef712078a",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-26 09:02:29.418+00', 92, '2339272e-f66b-4797-8e71-4fb9a818c2d9', '{
  "event": {
    "id": "2339272e-f66b-4797-8e71-4fb9a818c2d9",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Bloom', '2019-11-30 09:19:47.505625+00', 8, '76767c6e-6bbc-427d-b8ff-39bf06621253', '{
  "event": {
    "id": "76767c6e-6bbc-427d-b8ff-39bf06621253",
    "name": "Bloom",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('hatico', 'Snickers', '2019-11-30 08:52:57.383157+00', 11, 'f2b2056d-4189-4072-bdae-25f6dcaa8a39', '{
  "event": {
    "id": "f2b2056d-4189-4072-bdae-25f6dcaa8a39",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('hatico', 'Snickers', '2019-11-30 08:53:17.120332+00', 34, '8f8c26bc-b0d6-4a12-819d-e1d1fe113efc', '{
  "event": {
    "id": "8f8c26bc-b0d6-4a12-819d-e1d1fe113efc",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('hatico', 'Snickers', '2019-11-14 08:54:04.734+00', 57, '3495e10a-663e-4204-893e-3c657243cbc9', '{
  "event": {
    "id": "3495e10a-663e-4204-893e-3c657243cbc9",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-30 09:01:30.321741+00', 7, '4478b9e5-9365-4d8b-94c3-b0b8b44d62bf', '{
  "event": {
    "id": "4478b9e5-9365-4d8b-94c3-b0b8b44d62bf",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-30 09:01:50.610321+00', 30, '8e9bacf4-bf38-409a-97e6-69102f51f9d9', '{
  "event": {
    "id": "8e9bacf4-bf38-409a-97e6-69102f51f9d9",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-30 09:02:07.870235+00', 51, 'e89ef129-4c72-4252-b94f-ba2f20582257', '{
  "event": {
    "id": "e89ef129-4c72-4252-b94f-ba2f20582257",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-30 09:02:27.979074+00', 72, '022bb4fd-8ee5-4b2c-ab04-eb1d9d2b4a92', '{
  "event": {
    "id": "022bb4fd-8ee5-4b2c-ab04-eb1d9d2b4a92",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-27 09:02:55.958+00', 93, 'f3b27984-216f-4a1f-bcee-9cc4a16eba01', '{
  "event": {
    "id": "f3b27984-216f-4a1f-bcee-9cc4a16eba01",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-27 09:02:55.958+00', 112, '6994f199-d541-4d05-ad34-cd871d9b52b1', '{
  "event": {
    "id": "6994f199-d541-4d05-ad34-cd871d9b52b1",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Bloom', '2019-11-30 09:19:48.286383+00', 9, '99d10f28-6e12-41f7-8f62-500157d519b0', '{
  "event": {
    "id": "99d10f28-6e12-41f7-8f62-500157d519b0",
    "name": "Bloom",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-22 08:36:42.877+00', 8, '4bef8820-87a1-49a8-894c-f0fcc35a9d37', '{
  "event": {
    "id": "4bef8820-87a1-49a8-894c-f0fcc35a9d37",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-22 08:36:42.877+00', 10, 'd82f9b0c-1e41-4dff-b27f-6ef33743af76', '{
  "event": {
    "id": "d82f9b0c-1e41-4dff-b27f-6ef33743af76",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-22 08:36:42.877+00', 9, '1bab97d3-6dbb-4c5e-983e-a0c817c5b4c2', '{
  "event": {
    "id": "1bab97d3-6dbb-4c5e-983e-a0c817c5b4c2",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Bluum', '2019-11-28 09:20:45.141+00', 6, '2d132557-820c-44e1-88e9-ae97eb1b10c0', '{
  "event": {
    "id": "2d132557-820c-44e1-88e9-ae97eb1b10c0",
    "name": "Bluum",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('hatico', 'Snickers', '2019-11-30 08:52:58.082994+00', 12, 'c82fb874-c828-45a1-b486-4025765fc22a', '{
  "event": {
    "id": "c82fb874-c828-45a1-b486-4025765fc22a",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('hatico', 'Snickers', '2019-11-30 08:53:34.574214+00', 35, '4fbb8f38-34c8-4f5d-8370-177aab9fd6fa', '{
  "event": {
    "id": "4fbb8f38-34c8-4f5d-8370-177aab9fd6fa",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('hatico', 'Snickers', '2019-11-14 08:54:04.734+00', 58, 'cde51bea-85b5-4842-80fb-72ef2f4187f6', '{
  "event": {
    "id": "cde51bea-85b5-4842-80fb-72ef2f4187f6",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-30 09:01:31.228052+00', 8, '6c87efa2-0191-408f-84b3-be76d7e7d5df', '{
  "event": {
    "id": "6c87efa2-0191-408f-84b3-be76d7e7d5df",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-30 09:01:51.507117+00', 31, '22b9a8c5-8b79-4d84-bb34-745cf810e63e', '{
  "event": {
    "id": "22b9a8c5-8b79-4d84-bb34-745cf810e63e",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-30 09:02:08.718837+00', 52, 'a61769cc-91d7-4f9d-bf02-07cd5e970fee', '{
  "event": {
    "id": "a61769cc-91d7-4f9d-bf02-07cd5e970fee",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-30 09:02:28.730169+00', 73, '5decd079-3121-451b-b324-6d847e6cf29a', '{
  "event": {
    "id": "5decd079-3121-451b-b324-6d847e6cf29a",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-27 09:02:55.958+00', 113, '38395930-83c4-4cd2-848e-74457cb2f15b', '{
  "event": {
    "id": "38395930-83c4-4cd2-848e-74457cb2f15b",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-27 09:02:55.958+00', 94, '1c8a4d71-a48b-4847-8287-8a33fc79ff6a', '{
  "event": {
    "id": "1c8a4d71-a48b-4847-8287-8a33fc79ff6a",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Blaam', '2019-11-30 09:20:25.391909+00', 1, '6352fba4-9201-43b7-b809-2bf3bf4ce1fc', '{
  "event": {
    "id": "6352fba4-9201-43b7-b809-2bf3bf4ce1fc",
    "name": "Blaam",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Bluum', '2019-11-28 09:20:45.141+00', 7, '582bfec0-0334-4eef-8d61-3025be96c012', '{
  "event": {
    "id": "582bfec0-0334-4eef-8d61-3025be96c012",
    "name": "Bluum",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Bluum', '2019-11-28 09:20:45.141+00', 2, '45f2ce1f-9978-4901-a2a5-ed3ab1096e36', '{
  "event": {
    "id": "45f2ce1f-9978-4901-a2a5-ed3ab1096e36",
    "name": "Bluum",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-22 08:36:42.877+00', 30, 'cc38b709-dddd-45c0-b059-392e42e2318c', '{
  "event": {
    "id": "cc38b709-dddd-45c0-b059-392e42e2318c",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-22 08:36:42.877+00', 27, '2e4d6aa3-7cda-444d-8aab-a0ed30bd5e30', '{
  "event": {
    "id": "2e4d6aa3-7cda-444d-8aab-a0ed30bd5e30",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-22 08:36:42.877+00', 28, '08cd7fac-87b8-4329-8ea3-88df90d4b421', '{
  "event": {
    "id": "08cd7fac-87b8-4329-8ea3-88df90d4b421",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-22 08:36:42.877+00', 29, 'e19cd640-6e6f-4a0c-9efc-7d458302a21b', '{
  "event": {
    "id": "e19cd640-6e6f-4a0c-9efc-7d458302a21b",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('hatico', 'Snickers', '2019-11-30 08:52:58.892629+00', 13, 'c02441a9-7f60-490b-bfcb-e09f0dd2e5e0', '{
  "event": {
    "id": "c02441a9-7f60-490b-bfcb-e09f0dd2e5e0",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('hatico', 'Snickers', '2019-11-30 08:53:35.277773+00', 36, 'b65da5ab-9634-4218-84a7-8c05fdb2fcf8', '{
  "event": {
    "id": "b65da5ab-9634-4218-84a7-8c05fdb2fcf8",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('hatico', 'Snickers', '2019-11-14 08:54:04.734+00', 59, '7f4f4198-4c85-49c4-93f4-a84d0698852c', '{
  "event": {
    "id": "7f4f4198-4c85-49c4-93f4-a84d0698852c",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-30 09:01:32.168389+00', 9, 'fc9b2c84-2e36-4b40-862e-0415566ed56a', '{
  "event": {
    "id": "fc9b2c84-2e36-4b40-862e-0415566ed56a",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-30 09:01:52.307067+00', 32, '74e85c24-9ea6-48eb-96cb-c680c85bb8d7', '{
  "event": {
    "id": "74e85c24-9ea6-48eb-96cb-c680c85bb8d7",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-30 09:02:09.404709+00', 53, '44a04103-f8a8-4635-9fcd-c53248e65163', '{
  "event": {
    "id": "44a04103-f8a8-4635-9fcd-c53248e65163",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-27 09:02:55.958+00', 114, 'ee41a404-41c7-4d80-9d50-092f7b6ceef6', '{
  "event": {
    "id": "ee41a404-41c7-4d80-9d50-092f7b6ceef6",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-27 09:02:55.958+00', 95, '4a1b6306-42e4-46e0-b8ad-00794b3e0f85', '{
  "event": {
    "id": "4a1b6306-42e4-46e0-b8ad-00794b3e0f85",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-26 09:02:29.418+00', 74, '0b9301f6-48ee-4ff0-a490-98f89daf6ece', '{
  "event": {
    "id": "0b9301f6-48ee-4ff0-a490-98f89daf6ece",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Blaam', '2019-11-30 09:20:42.836208+00', 2, '4fad3704-209e-42d0-ba52-115426520bed', '{
  "event": {
    "id": "4fad3704-209e-42d0-ba52-115426520bed",
    "name": "Blaam",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-22 08:36:42.877+00', 48, '283cea09-747f-48fc-b586-7f10427e541c', '{
  "event": {
    "id": "283cea09-747f-48fc-b586-7f10427e541c",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-22 08:36:42.877+00', 52, 'e0679aa7-a63e-4efc-a58b-3d23142a26e9', '{
  "event": {
    "id": "e0679aa7-a63e-4efc-a58b-3d23142a26e9",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-22 08:36:42.877+00', 50, '90a56076-64b4-4d39-b92c-fbfef1aeb89c', '{
  "event": {
    "id": "90a56076-64b4-4d39-b92c-fbfef1aeb89c",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-22 08:36:42.877+00', 57, '28dd882b-fc3f-4e87-a8f3-cea78a02a932', '{
  "event": {
    "id": "28dd882b-fc3f-4e87-a8f3-cea78a02a932",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('hatico', 'Snickers', '2019-11-30 08:52:59.733064+00', 14, 'a14dad86-ca18-4171-af02-277e263edfea', '{
  "event": {
    "id": "a14dad86-ca18-4171-af02-277e263edfea",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('hatico', 'Snickers', '2019-11-30 08:53:36.195213+00', 37, '269e0923-8c0d-4e15-9d7c-f2bdb97b557d', '{
  "event": {
    "id": "269e0923-8c0d-4e15-9d7c-f2bdb97b557d",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('hatico', 'Snickers', '2019-11-14 08:54:04.734+00', 60, 'a3207275-11ba-4a4b-9fb8-249e3ee8e5b3', '{
  "event": {
    "id": "a3207275-11ba-4a4b-9fb8-249e3ee8e5b3",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-30 09:01:33.1007+00', 10, 'e229df19-aede-4239-b8a0-83bd5eacecd7', '{
  "event": {
    "id": "e229df19-aede-4239-b8a0-83bd5eacecd7",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-30 09:01:53.190491+00', 33, 'b991613f-900b-4825-99f8-4af789388b27', '{
  "event": {
    "id": "b991613f-900b-4825-99f8-4af789388b27",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-30 09:02:10.319222+00', 54, '2f95e03a-ebb7-4b33-8a52-1286600092c8', '{
  "event": {
    "id": "2f95e03a-ebb7-4b33-8a52-1286600092c8",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-24 08:37:30.218+00', 58, 'fe884096-71fb-400c-8f5c-cdb01030f66c', '{
  "event": {
    "id": "fe884096-71fb-400c-8f5c-cdb01030f66c",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-27 09:02:55.958+00', 115, '0e4decb3-fc25-4324-b176-5bfe2381e0c3', '{
  "event": {
    "id": "0e4decb3-fc25-4324-b176-5bfe2381e0c3",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-27 09:02:55.958+00', 96, '38d1b793-74c8-4eb7-8722-d3ddd6ebe152', '{
  "event": {
    "id": "38d1b793-74c8-4eb7-8722-d3ddd6ebe152",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-26 09:02:29.418+00', 75, '770b7173-1c56-4129-9812-4bcddf4f77e3', '{
  "event": {
    "id": "770b7173-1c56-4129-9812-4bcddf4f77e3",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Blaam', '2019-11-30 09:20:43.592171+00', 3, '21ece7f6-e211-442d-b5d4-32eea8787c41', '{
  "event": {
    "id": "21ece7f6-e211-442d-b5d4-32eea8787c41",
    "name": "Blaam",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('hatico', 'Snickers', '2019-11-30 08:53:00.674695+00', 15, '816041ab-ac5c-49a0-a6ee-bec77f075bf9', '{
  "event": {
    "id": "816041ab-ac5c-49a0-a6ee-bec77f075bf9",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('hatico', 'Snickers', '2019-11-30 08:53:37.023939+00', 38, '9caf3314-98ab-49da-8470-8ddf447ff271', '{
  "event": {
    "id": "9caf3314-98ab-49da-8470-8ddf447ff271",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('hatico', 'Snickers', '2019-11-14 08:54:04.734+00', 61, 'd573679f-d859-4ff2-a46e-fa7a946ea926', '{
  "event": {
    "id": "d573679f-d859-4ff2-a46e-fa7a946ea926",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-30 09:01:34.089948+00', 11, '82de376f-6284-49d8-ac9b-b54fb6ac3cb6', '{
  "event": {
    "id": "82de376f-6284-49d8-ac9b-b54fb6ac3cb6",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-30 09:02:11.093554+00', 55, 'a616ee9f-e401-4604-aa64-de2ea245c98d', '{
  "event": {
    "id": "a616ee9f-e401-4604-aa64-de2ea245c98d",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-27 09:02:55.958+00', 116, '5d232cd3-f00c-43c4-8a3d-39301a53f773', '{
  "event": {
    "id": "5d232cd3-f00c-43c4-8a3d-39301a53f773",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-27 09:02:55.958+00', 97, '5a137ef5-b5c3-4cfb-9163-585f7ad8f5c7', '{
  "event": {
    "id": "5a137ef5-b5c3-4cfb-9163-585f7ad8f5c7",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-26 09:02:29.418+00', 76, 'de6d10f0-3d21-42a5-bdfb-36647fee5cb6', '{
  "event": {
    "id": "de6d10f0-3d21-42a5-bdfb-36647fee5cb6",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Blaam', '2019-11-30 09:20:44.364347+00', 4, '94364a2a-0ef7-481e-bbd5-823b99b1fb3b', '{
  "event": {
    "id": "94364a2a-0ef7-481e-bbd5-823b99b1fb3b",
    "name": "Blaam",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Blaam', '2019-11-28 09:20:45.141+00', 6, '5613e384-6974-417d-acab-781d31953ee3', '{
  "event": {
    "id": "5613e384-6974-417d-acab-781d31953ee3",
    "name": "Blaam",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Bluum', '2019-11-28 09:20:45.141+00', 7, '92a6316f-d24b-4a2d-9506-3b7b852443f4', '{
  "event": {
    "id": "92a6316f-d24b-4a2d-9506-3b7b852443f4",
    "name": "Bluum",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Bluum', '2019-11-28 09:20:45.141+00', 3, 'd60b9dde-6565-4ebb-bf85-335b6e38c11f', '{
  "event": {
    "id": "d60b9dde-6565-4ebb-bf85-335b6e38c11f",
    "name": "Bluum",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Bluum', '2019-11-28 09:20:45.141+00', 5, '6f00e3cd-f4d2-47ee-837e-973772921feb', '{
  "event": {
    "id": "6f00e3cd-f4d2-47ee-837e-973772921feb",
    "name": "Bluum",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Bluum', '2019-11-28 09:20:45.141+00', 4, 'ed22cedf-25d4-4349-82f5-6352686b9fc8', '{
  "event": {
    "id": "ed22cedf-25d4-4349-82f5-6352686b9fc8",
    "name": "Bluum",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('hatico', 'Snickers', '2019-11-30 08:53:01.570414+00', 16, '247398c7-4268-44ed-97fc-04e2498f5106', '{
  "event": {
    "id": "247398c7-4268-44ed-97fc-04e2498f5106",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('hatico', 'Snickers', '2019-11-30 08:53:50.609938+00', 39, '9f82af01-eedf-4667-8059-0142b99fafa9', '{
  "event": {
    "id": "9f82af01-eedf-4667-8059-0142b99fafa9",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('hatico', 'Snickers', '2019-11-14 08:54:04.734+00', 62, 'ee99784d-f908-4334-a644-8429d0180a26', '{
  "event": {
    "id": "ee99784d-f908-4334-a644-8429d0180a26",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-30 09:01:34.909042+00', 12, 'e2a4ea04-8ed1-4295-b17b-1e61ffca1ce0', '{
  "event": {
    "id": "e2a4ea04-8ed1-4295-b17b-1e61ffca1ce0",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-30 09:01:54.826306+00', 35, '8ab2acd8-84e3-4bcc-8204-903c08f994d1', '{
  "event": {
    "id": "8ab2acd8-84e3-4bcc-8204-903c08f994d1",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-30 09:02:11.957854+00', 56, 'ea55afd2-e91f-44d0-b699-a4bb7ed3d1cc', '{
  "event": {
    "id": "ea55afd2-e91f-44d0-b699-a4bb7ed3d1cc",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-27 09:02:55.958+00', 98, '8cf505bb-423f-407c-8b36-e0ca7696a71d', '{
  "event": {
    "id": "8cf505bb-423f-407c-8b36-e0ca7696a71d",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-27 09:02:55.958+00', 117, '166afcfb-4231-4ac0-ac5b-65f38c93e7b1', '{
  "event": {
    "id": "166afcfb-4231-4ac0-ac5b-65f38c93e7b1",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-26 09:02:29.418+00', 77, '7d4cf700-0aca-4b90-b85e-0eb6b0a573c5', '{
  "event": {
    "id": "7d4cf700-0aca-4b90-b85e-0eb6b0a573c5",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Blaam', '2019-11-28 09:20:45.141+00', 5, '3ceb4ef1-ccbd-4244-b008-cf435ef5f88e', '{
  "event": {
    "id": "3ceb4ef1-ccbd-4244-b008-cf435ef5f88e",
    "name": "Blaam",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Bluum', '2019-11-28 09:20:45.141+00', 6, '8f98024d-d7f4-4e36-9296-6956afad9f00', '{
  "event": {
    "id": "8f98024d-d7f4-4e36-9296-6956afad9f00",
    "name": "Bluum",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Bluum', '2019-11-28 09:20:45.141+00', 3, '519edad4-91ac-46ef-9c8f-afb0495bc059', '{
  "event": {
    "id": "519edad4-91ac-46ef-9c8f-afb0495bc059",
    "name": "Bluum",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Bluum', '2019-11-28 09:20:45.141+00', 1, '95bf8048-41ba-4769-bc05-b5ea1e53a95b', '{
  "event": {
    "id": "95bf8048-41ba-4769-bc05-b5ea1e53a95b",
    "name": "Bluum",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Bliim', '2019-11-28 09:20:45.141+00', 3, '55ec541e-e3be-4d43-a5f2-2bafee290280', '{
  "event": {
    "id": "55ec541e-e3be-4d43-a5f2-2bafee290280",
    "name": "Bliim",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('hatico', 'Snickers', '2019-11-30 08:53:02.400319+00', 17, '09862321-afd5-48fb-bfaa-993a59a445cd', '{
  "event": {
    "id": "09862321-afd5-48fb-bfaa-993a59a445cd",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('hatico', 'Snickers', '2019-11-30 08:53:51.404915+00', 40, '9b9f7903-d85b-41fb-8dc4-7f3463bee3d5', '{
  "event": {
    "id": "9b9f7903-d85b-41fb-8dc4-7f3463bee3d5",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('hatico', 'Snickers', '2019-11-14 08:54:04.734+00', 63, '0da45679-67be-4a37-be68-9a55c31726a9', '{
  "event": {
    "id": "0da45679-67be-4a37-be68-9a55c31726a9",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-30 09:01:35.811664+00', 13, '1420aac0-9785-481a-bd87-8eecff148975', '{
  "event": {
    "id": "1420aac0-9785-481a-bd87-8eecff148975",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-30 09:01:55.602166+00', 36, 'e0897606-9f16-4289-8e73-31073dbd5cca', '{
  "event": {
    "id": "e0897606-9f16-4289-8e73-31073dbd5cca",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-30 09:02:15.390889+00', 57, 'f046672d-44db-4388-95f1-a6875cc130cf', '{
  "event": {
    "id": "f046672d-44db-4388-95f1-a6875cc130cf",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-27 09:02:55.958+00', 99, 'b42f42a1-6ba8-423f-9198-5ff75a355ea4', '{
  "event": {
    "id": "b42f42a1-6ba8-423f-9198-5ff75a355ea4",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-08 08:38:35.806+00', 98, '27e673c6-60b7-44b1-be95-6dd145ebd33c', '{
  "event": {
    "id": "27e673c6-60b7-44b1-be95-6dd145ebd33c",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-08 08:38:35.806+00', 105, '4830bed9-5c18-469c-bff0-1005f8882a66', '{
  "event": {
    "id": "4830bed9-5c18-469c-bff0-1005f8882a66",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-08 08:38:35.806+00', 103, 'eeea172f-186a-42ed-8bfe-518804d74231', '{
  "event": {
    "id": "eeea172f-186a-42ed-8bfe-518804d74231",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-08 08:38:35.806+00', 101, '5354dafa-045e-4d94-8673-ee3d0d5eca55', '{
  "event": {
    "id": "5354dafa-045e-4d94-8673-ee3d0d5eca55",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-08 08:38:35.806+00', 97, '87bbd583-8249-4fed-b445-84953b892eab', '{
  "event": {
    "id": "87bbd583-8249-4fed-b445-84953b892eab",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-27 09:02:55.958+00', 118, '04998d84-70cb-4045-a21c-c597e6255e6f', '{
  "event": {
    "id": "04998d84-70cb-4045-a21c-c597e6255e6f",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-26 09:02:29.418+00', 78, '391ad19d-4897-4bff-b9cb-e454c3788639', '{
  "event": {
    "id": "391ad19d-4897-4bff-b9cb-e454c3788639",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('hatico', 'Snickers', '2019-11-30 08:53:03.23336+00', 18, '04fabdd5-e11d-44f6-aac9-3993c94a76cc', '{
  "event": {
    "id": "04fabdd5-e11d-44f6-aac9-3993c94a76cc",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('hatico', 'Snickers', '2019-11-30 08:53:52.369828+00', 41, 'deca7b3d-05e3-4e2d-b877-4f12b6456af3', '{
  "event": {
    "id": "deca7b3d-05e3-4e2d-b877-4f12b6456af3",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('hatico', 'Snickers', '2019-11-14 08:54:04.734+00', 64, '9fcedd4a-91c9-405e-b5ee-6a788730e56e', '{
  "event": {
    "id": "9fcedd4a-91c9-405e-b5ee-6a788730e56e",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-30 09:01:36.738806+00', 14, '62545e1b-7c36-48f0-8690-b91b963e1aea', '{
  "event": {
    "id": "62545e1b-7c36-48f0-8690-b91b963e1aea",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-30 09:01:56.529211+00', 37, '416b1f93-ea9d-4918-85e5-bc757c7f5376', '{
  "event": {
    "id": "416b1f93-ea9d-4918-85e5-bc757c7f5376",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-30 09:02:17.400067+00', 58, '312b58bc-bf0a-46fc-92f7-6becf96d03c3', '{
  "event": {
    "id": "312b58bc-bf0a-46fc-92f7-6becf96d03c3",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-27 09:02:55.958+00', 100, 'de17730d-ef15-45ee-ab83-01ffaf3e6c6c', '{
  "event": {
    "id": "de17730d-ef15-45ee-ab83-01ffaf3e6c6c",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-27 09:02:55.958+00', 119, '78f54b8d-a6e1-4b19-90b3-0338a47431d0', '{
  "event": {
    "id": "78f54b8d-a6e1-4b19-90b3-0338a47431d0",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-26 09:02:29.418+00', 79, '2efcc32f-18e5-4729-b508-548628845865', '{
  "event": {
    "id": "2efcc32f-18e5-4729-b508-548628845865",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Bluum', '2019-11-28 09:20:45.141+00', 8, '45c96a3a-e04d-479e-90f6-48c32c9bac11', '{
  "event": {
    "id": "45c96a3a-e04d-479e-90f6-48c32c9bac11",
    "name": "Bluum",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Blaam', '2019-11-28 09:20:45.141+00', 7, '51a0f9b7-8998-4aad-8f41-74b529398732', '{
  "event": {
    "id": "51a0f9b7-8998-4aad-8f41-74b529398732",
    "name": "Blaam",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Bliim', '2019-11-28 09:20:45.141+00', 6, '103b424c-507f-4a2b-8ca1-96a77946fbc5', '{
  "event": {
    "id": "103b424c-507f-4a2b-8ca1-96a77946fbc5",
    "name": "Bliim",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Bluum', '2019-11-28 09:20:45.141+00', 8, '8f4bb79a-3e85-4daf-bb69-ae62c4dd1c80', '{
  "event": {
    "id": "8f4bb79a-3e85-4daf-bb69-ae62c4dd1c80",
    "name": "Bluum",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('hatico', 'Snickers', '2019-11-30 08:53:04.145071+00', 19, '2205a694-f990-45fe-80a2-d45ee91a5970', '{
  "event": {
    "id": "2205a694-f990-45fe-80a2-d45ee91a5970",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('hatico', 'Snickers', '2019-11-30 08:53:53.148803+00', 42, '5fff34a7-f988-4b7c-b92b-5cb09c05129d', '{
  "event": {
    "id": "5fff34a7-f988-4b7c-b92b-5cb09c05129d",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('hatico', 'Snickers', '2019-11-14 08:54:04.734+00', 65, 'f5524c48-2081-4ed0-bb9a-12bc150b8e91', '{
  "event": {
    "id": "f5524c48-2081-4ed0-bb9a-12bc150b8e91",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-30 09:01:37.576905+00', 15, '57bf50e9-b6a0-4478-aa8e-788360e97600', '{
  "event": {
    "id": "57bf50e9-b6a0-4478-aa8e-788360e97600",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-30 09:01:57.360187+00', 38, '5a4eec70-6cc3-434c-94f4-99efd4bbca2e', '{
  "event": {
    "id": "5a4eec70-6cc3-434c-94f4-99efd4bbca2e",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-30 09:02:18.367329+00', 59, '5937e193-0504-4416-a056-8aff0caddc79', '{
  "event": {
    "id": "5937e193-0504-4416-a056-8aff0caddc79",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-27 09:02:55.958+00', 101, 'a8bb4ecd-b25e-4018-929b-802cc70635a4', '{
  "event": {
    "id": "a8bb4ecd-b25e-4018-929b-802cc70635a4",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-27 09:02:55.958+00', 120, '2cd61543-b390-46f2-8d7c-0c24bd295156', '{
  "event": {
    "id": "2cd61543-b390-46f2-8d7c-0c24bd295156",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-26 09:02:29.418+00', 80, '166c2bf6-746d-4ae6-a09a-33eededed411', '{
  "event": {
    "id": "166c2bf6-746d-4ae6-a09a-33eededed411",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Blaam', '2019-11-28 09:20:45.141+00', 8, '037e5294-decb-4459-94f4-efa4a81fea0e', '{
  "event": {
    "id": "037e5294-decb-4459-94f4-efa4a81fea0e",
    "name": "Blaam",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Bluum', '2019-11-28 09:20:45.141+00', 9, '0b70549c-b206-410e-aad4-3c207e8e3428', '{
  "event": {
    "id": "0b70549c-b206-410e-aad4-3c207e8e3428",
    "name": "Bluum",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('hatico', 'Snickers', '2019-11-30 08:53:04.983035+00', 20, '3c08c0e5-d8ef-41fa-991b-7c2442de2a28', '{
  "event": {
    "id": "3c08c0e5-d8ef-41fa-991b-7c2442de2a28",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('hatico', 'Snickers', '2019-11-30 08:53:54.03013+00', 43, '64d14b4b-983e-4cee-876d-46a8527bd09a', '{
  "event": {
    "id": "64d14b4b-983e-4cee-876d-46a8527bd09a",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('hatico', 'Snickers', '2019-11-14 08:54:04.734+00', 66, 'ae5b7edb-9d7d-4bc0-8fe6-23c00aadbf1d', '{
  "event": {
    "id": "ae5b7edb-9d7d-4bc0-8fe6-23c00aadbf1d",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-30 09:01:38.47689+00', 16, '0efbdeaf-8818-45d3-b23f-a56af14d534c', '{
  "event": {
    "id": "0efbdeaf-8818-45d3-b23f-a56af14d534c",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-30 09:01:58.242755+00', 39, 'a5a7d527-67af-4cd3-b6eb-554375d68c58', '{
  "event": {
    "id": "a5a7d527-67af-4cd3-b6eb-554375d68c58",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-30 09:02:19.197777+00', 60, 'b4dd35a8-1838-42aa-b6be-def3e62a751f', '{
  "event": {
    "id": "b4dd35a8-1838-42aa-b6be-def3e62a751f",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-27 09:02:55.958+00', 102, '733c2eb4-0e2b-4629-9c3a-716e914572ed', '{
  "event": {
    "id": "733c2eb4-0e2b-4629-9c3a-716e914572ed",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-29 08:39:26.053+00', 149, '2d6d681b-6c58-4719-8ed6-82176cbf03f2', '{
  "event": {
    "id": "2d6d681b-6c58-4719-8ed6-82176cbf03f2",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-29 08:39:26.053+00', 150, '864da977-be9e-4acd-bcdb-fbed1ba35423', '{
  "event": {
    "id": "864da977-be9e-4acd-bcdb-fbed1ba35423",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-29 08:39:26.053+00', 154, '6de770ef-1885-4ab6-9d51-c9bb0e3a5545', '{
  "event": {
    "id": "6de770ef-1885-4ab6-9d51-c9bb0e3a5545",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-29 08:39:26.053+00', 153, 'ecd802db-cfcc-4cb3-90b0-09ef59bb853a', '{
  "event": {
    "id": "ecd802db-cfcc-4cb3-90b0-09ef59bb853a",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-29 08:39:26.053+00', 147, '40433389-9c5c-47bb-954a-b3e77fbf0427', '{
  "event": {
    "id": "40433389-9c5c-47bb-954a-b3e77fbf0427",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-29 08:39:26.053+00', 145, '14b787a8-6fd9-44cf-aa6e-5091c58e8f1c', '{
  "event": {
    "id": "14b787a8-6fd9-44cf-aa6e-5091c58e8f1c",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-26 09:02:29.418+00', 84, 'd2818f89-963d-46f8-af21-dbc5b13f1bdd', '{
  "event": {
    "id": "d2818f89-963d-46f8-af21-dbc5b13f1bdd",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-26 09:02:29.418+00', 81, '133da989-7962-4e29-9102-e2f2cce02f25', '{
  "event": {
    "id": "133da989-7962-4e29-9102-e2f2cce02f25",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('hatico', 'Snickers', '2019-11-30 08:53:05.849868+00', 21, 'af70f933-dcc7-474f-a753-f855b663bca0', '{
  "event": {
    "id": "af70f933-dcc7-474f-a753-f855b663bca0",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('hatico', 'Snickers', '2019-11-30 08:53:54.907001+00', 44, '048ae47b-5401-4333-9be2-7891f8c09e2e', '{
  "event": {
    "id": "048ae47b-5401-4333-9be2-7891f8c09e2e",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('hatico', 'Snickers', '2019-11-14 08:54:04.734+00', 67, '703ecfb4-eca6-4689-92bb-a0d57fa88525', '{
  "event": {
    "id": "703ecfb4-eca6-4689-92bb-a0d57fa88525",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-30 09:01:39.327046+00', 17, 'aa38c4a0-337b-48ca-b90b-1bc6a86dd681', '{
  "event": {
    "id": "aa38c4a0-337b-48ca-b90b-1bc6a86dd681",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-30 09:01:59.057654+00', 40, '974c816a-8ae7-4f65-9f63-009be26d711a', '{
  "event": {
    "id": "974c816a-8ae7-4f65-9f63-009be26d711a",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-30 09:02:20.092879+00', 61, 'a3e6732b-47d7-497c-bc7f-b57460ae180b', '{
  "event": {
    "id": "a3e6732b-47d7-497c-bc7f-b57460ae180b",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-27 09:02:55.958+00', 103, '697c0d92-dc8d-4ed2-bb0a-c67ee711e2b1', '{
  "event": {
    "id": "697c0d92-dc8d-4ed2-bb0a-c67ee711e2b1",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-26 09:02:29.418+00', 82, '0b595e91-66ee-4ef1-90b1-6845a562a1de', '{
  "event": {
    "id": "0b595e91-66ee-4ef1-90b1-6845a562a1de",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-26 09:02:29.418+00', 90, '1bdac8ca-202e-4f45-8de5-fd8a8c322a01', '{
  "event": {
    "id": "1bdac8ca-202e-4f45-8de5-fd8a8c322a01",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Blaam', '2019-11-28 09:20:45.141+00', 9, 'fb9621fc-a77b-4a2d-8fd3-5cdfae60018d', '{
  "event": {
    "id": "fb9621fc-a77b-4a2d-8fd3-5cdfae60018d",
    "name": "Blaam",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Bluum', '2019-11-28 09:20:45.141+00', 10, '3aa26d4a-0ded-4fee-8cf0-a63c8ec91035', '{
  "event": {
    "id": "3aa26d4a-0ded-4fee-8cf0-a63c8ec91035",
    "name": "Bluum",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('hatico', 'Snickers', '2019-11-30 08:53:06.682421+00', 22, '63142d27-2274-42d3-a1da-bb13fc97408e', '{
  "event": {
    "id": "63142d27-2274-42d3-a1da-bb13fc97408e",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('hatico', 'Snickers', '2019-11-30 08:53:55.724147+00', 45, '04e6808f-13c8-4960-b9fc-8f5f4234f9eb', '{
  "event": {
    "id": "04e6808f-13c8-4960-b9fc-8f5f4234f9eb",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('hatico', 'Snickers', '2019-11-14 08:54:04.734+00', 68, '0a916db9-a7c7-4637-9d4b-3ec88b7051fc', '{
  "event": {
    "id": "0a916db9-a7c7-4637-9d4b-3ec88b7051fc",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-30 09:01:40.290234+00', 18, 'c93a4708-5500-4350-852c-a7a95cc71ff6', '{
  "event": {
    "id": "c93a4708-5500-4350-852c-a7a95cc71ff6",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-30 09:01:59.889606+00', 41, 'ae5ba4a6-596b-4095-85d3-c1a2219246b0', '{
  "event": {
    "id": "ae5ba4a6-596b-4095-85d3-c1a2219246b0",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-30 09:02:20.804477+00', 62, 'd695e16e-2d0a-4de4-ac68-2c5472c8bf57', '{
  "event": {
    "id": "d695e16e-2d0a-4de4-ac68-2c5472c8bf57",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-27 09:02:55.958+00', 104, 'a98c3d58-8934-4be1-a6f6-85d35fb00df4', '{
  "event": {
    "id": "a98c3d58-8934-4be1-a6f6-85d35fb00df4",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-26 09:02:29.418+00', 83, '693f0595-c49c-450e-8980-12b4024832c3', '{
  "event": {
    "id": "693f0595-c49c-450e-8980-12b4024832c3",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Bloom', '2019-11-30 09:19:29.182971+00', 1, '3dc655ce-ff77-4582-86cb-fcaecba2d9b4', '{
  "event": {
    "id": "3dc655ce-ff77-4582-86cb-fcaecba2d9b4",
    "name": "Bloom",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Blaam', '2019-11-28 09:20:45.141+00', 10, 'b7d4c3fd-d9fa-47e8-9a2a-743c84ae700b', '{
  "event": {
    "id": "b7d4c3fd-d9fa-47e8-9a2a-743c84ae700b",
    "name": "Blaam",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Bluum', '2019-11-28 09:20:45.141+00', 11, '76a6d247-3e87-487f-9e37-1899d163b045', '{
  "event": {
    "id": "76a6d247-3e87-487f-9e37-1899d163b045",
    "name": "Bluum",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-09 08:32:57.71+00', 191, 'bf91dfd3-58f7-4476-81bb-4bb66bf28b12', '{
  "event": {
    "id": "bf91dfd3-58f7-4476-81bb-4bb66bf28b12",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('hatico', 'Snickers', '2019-11-30 08:53:07.54606+00', 23, '88c6600d-8565-451f-9f7f-de8eec6a8aa4', '{
  "event": {
    "id": "88c6600d-8565-451f-9f7f-de8eec6a8aa4",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('hatico', 'Snickers', '2019-11-30 08:53:56.493586+00', 46, 'd9710d6b-7199-4b89-87cb-c4d547354c0c', '{
  "event": {
    "id": "d9710d6b-7199-4b89-87cb-c4d547354c0c",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-25 08:26:14.066+00', 61, 'd29db684-7c08-499d-9518-94b8d4459549', '{
  "event": {
    "id": "d29db684-7c08-499d-9518-94b8d4459549",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-25 08:26:14.066+00', 59, 'bf3e5636-bb94-4187-9e94-bf9ff460524c', '{
  "event": {
    "id": "bf3e5636-bb94-4187-9e94-bf9ff460524c",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-25 08:26:14.066+00', 64, 'ab633c21-dd2d-464e-9d27-3582eec66af1', '{
  "event": {
    "id": "ab633c21-dd2d-464e-9d27-3582eec66af1",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-25 08:26:14.066+00', 63, '7f35a15d-6e0c-4580-bdfd-6d3421c43e26', '{
  "event": {
    "id": "7f35a15d-6e0c-4580-bdfd-6d3421c43e26",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-25 08:26:14.066+00', 62, '1bfdeb2e-5738-4d5b-86a8-173e846825d4', '{
  "event": {
    "id": "1bfdeb2e-5738-4d5b-86a8-173e846825d4",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-25 08:26:14.066+00', 57, '7728cc2a-bdf7-439e-8f24-53d1b9a419df', '{
  "event": {
    "id": "7728cc2a-bdf7-439e-8f24-53d1b9a419df",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-25 08:26:14.066+00', 58, 'c6e3e4bd-0278-4151-8684-cdff9346c537', '{
  "event": {
    "id": "c6e3e4bd-0278-4151-8684-cdff9346c537",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-25 08:26:14.066+00', 65, '51968f71-b9ae-4e43-b655-c511024788b9', '{
  "event": {
    "id": "51968f71-b9ae-4e43-b655-c511024788b9",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-25 08:26:14.066+00', 55, '961f6a47-947e-4c67-b97f-9df14c43183b', '{
  "event": {
    "id": "961f6a47-947e-4c67-b97f-9df14c43183b",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-25 08:26:14.066+00', 51, '09ca5dc1-7a8e-400d-9bca-b93272198edb', '{
  "event": {
    "id": "09ca5dc1-7a8e-400d-9bca-b93272198edb",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-25 08:26:14.066+00', 54, '68d0ac16-0049-4361-bb54-346b6e8b7ddd', '{
  "event": {
    "id": "68d0ac16-0049-4361-bb54-346b6e8b7ddd",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('hatico', 'Snickers', '2019-11-14 08:54:04.734+00', 69, '32dcee32-923d-4942-8890-c9abf8cc5f40', '{
  "event": {
    "id": "32dcee32-923d-4942-8890-c9abf8cc5f40",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nicowa', 'Snickers', '2019-11-30 09:01:41.190784+00', 19, '72cd55ea-a714-480b-a453-848c14f52590', '{
  "event": {
    "id": "72cd55ea-a714-480b-a453-848c14f52590",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-25 08:26:14.066+00', 56, '75a76892-313f-4068-8827-0907f6cf2717', '{
  "event": {
    "id": "75a76892-313f-4068-8827-0907f6cf2717",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-25 08:26:14.066+00', 49, 'ec41a2b7-1c30-4c99-8611-36766ba93993', '{
  "event": {
    "id": "ec41a2b7-1c30-4c99-8611-36766ba93993",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-25 08:26:14.066+00', 52, '32e46d83-bee4-47b4-b4a0-fb0f7e05ac6c', '{
  "event": {
    "id": "32e46d83-bee4-47b4-b4a0-fb0f7e05ac6c",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-25 08:26:14.066+00', 53, 'd2cc5863-8417-47dc-a4cb-e84184251ade', '{
  "event": {
    "id": "d2cc5863-8417-47dc-a4cb-e84184251ade",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-25 08:26:14.066+00', 60, '489fed7b-fcc3-441d-9e0f-67fd7fcfb5a5', '{
  "event": {
    "id": "489fed7b-fcc3-441d-9e0f-67fd7fcfb5a5",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-25 08:26:14.066+00', 50, 'd15e9d38-4ea4-42bb-84b6-f335256cfdb0', '{
  "event": {
    "id": "d15e9d38-4ea4-42bb-84b6-f335256cfdb0",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-20 08:27:37.963+00', 1, 'd32ef815-6cbd-48f9-af4e-cb6cd31aa038', '{
  "event": {
    "id": "d32ef815-6cbd-48f9-af4e-cb6cd31aa038",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-20 08:27:37.963+00', 4, 'ccfba819-8bd3-4484-bbdf-1ec6c8bf0109', '{
  "event": {
    "id": "ccfba819-8bd3-4484-bbdf-1ec6c8bf0109",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-20 08:27:37.963+00', 76, 'c48b2c38-ab8d-4bf4-875a-33054b84c75d', '{
  "event": {
    "id": "c48b2c38-ab8d-4bf4-875a-33054b84c75d",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-20 08:27:37.963+00', 3, 'fd3fe15e-5839-4d02-bd6c-7360eab1b321', '{
  "event": {
    "id": "fd3fe15e-5839-4d02-bd6c-7360eab1b321",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-20 08:27:37.963+00', 79, '6ded23b2-1cdc-4b7b-872c-38d10960dfe9', '{
  "event": {
    "id": "6ded23b2-1cdc-4b7b-872c-38d10960dfe9",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-20 08:27:37.963+00', 73, 'd5eee4ec-bbba-4ea1-9e2a-f6cb11fa600d', '{
  "event": {
    "id": "d5eee4ec-bbba-4ea1-9e2a-f6cb11fa600d",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-20 08:27:37.963+00', 71, '69e2023d-5f34-4c6d-867b-8f8a16e2f5d9', '{
  "event": {
    "id": "69e2023d-5f34-4c6d-867b-8f8a16e2f5d9",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-20 08:27:37.963+00', 74, '373ba093-e4a9-4cfc-ab6a-8849d8edd2a9', '{
  "event": {
    "id": "373ba093-e4a9-4cfc-ab6a-8849d8edd2a9",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-20 08:27:37.963+00', 80, '48727292-f6cc-4d6e-a685-1e89e88ff24a', '{
  "event": {
    "id": "48727292-f6cc-4d6e-a685-1e89e88ff24a",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-20 08:27:37.963+00', 70, '6189f2a8-7f04-4eb0-b388-1a3a08831554', '{
  "event": {
    "id": "6189f2a8-7f04-4eb0-b388-1a3a08831554",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-20 08:27:37.963+00', 69, '6aef7a47-95c6-4191-85ec-7123384e408f', '{
  "event": {
    "id": "6aef7a47-95c6-4191-85ec-7123384e408f",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-20 08:27:37.963+00', 2, 'e1d1cae1-fc88-40eb-990d-f195be105b9a', '{
  "event": {
    "id": "e1d1cae1-fc88-40eb-990d-f195be105b9a",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-20 08:27:37.963+00', 75, 'afc369fc-2eb3-4d20-995c-adca561864ce', '{
  "event": {
    "id": "afc369fc-2eb3-4d20-995c-adca561864ce",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-20 08:27:37.963+00', 78, 'bf1822aa-85ad-4b8e-97cd-83fe95955074', '{
  "event": {
    "id": "bf1822aa-85ad-4b8e-97cd-83fe95955074",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-20 08:27:37.963+00', 77, 'd94aecf8-b072-4edd-bbfc-80c2de49941d', '{
  "event": {
    "id": "d94aecf8-b072-4edd-bbfc-80c2de49941d",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-20 08:27:37.963+00', 72, '457de215-cfc4-4c62-96c5-a9dd98f1c521', '{
  "event": {
    "id": "457de215-cfc4-4c62-96c5-a9dd98f1c521",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-20 08:27:37.963+00', 5, '839a3669-2fa2-4897-8963-cae38a3ee210', '{
  "event": {
    "id": "839a3669-2fa2-4897-8963-cae38a3ee210",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-13 08:36:21.893+00', 38, '6a92e4e7-27d9-4c07-ac6d-8e1b7453d51c', '{
  "event": {
    "id": "6a92e4e7-27d9-4c07-ac6d-8e1b7453d51c",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-13 08:36:21.893+00', 41, '097c7f4e-8732-4600-8ca7-e922691df0cb', '{
  "event": {
    "id": "097c7f4e-8732-4600-8ca7-e922691df0cb",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-13 08:36:21.893+00', 37, '2665325a-17e7-4c5f-be38-ad35726705f0', '{
  "event": {
    "id": "2665325a-17e7-4c5f-be38-ad35726705f0",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-13 08:36:21.893+00', 32, '7e0b7372-2b89-4180-a7c9-c00d545b15cf', '{
  "event": {
    "id": "7e0b7372-2b89-4180-a7c9-c00d545b15cf",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-13 08:36:21.893+00', 36, 'cfc96b84-8ee7-4b56-99a7-6b5af6e36b10', '{
  "event": {
    "id": "cfc96b84-8ee7-4b56-99a7-6b5af6e36b10",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-13 08:36:21.893+00', 43, '6aeaab52-6ae9-467f-9fa3-f8eb9384a539', '{
  "event": {
    "id": "6aeaab52-6ae9-467f-9fa3-f8eb9384a539",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-13 08:36:21.893+00', 33, 'accb737a-8d3e-4236-9aff-e148d468d3cf', '{
  "event": {
    "id": "accb737a-8d3e-4236-9aff-e148d468d3cf",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-13 08:36:21.893+00', 31, 'a8978d97-c763-43bb-b2c1-d8a3891e668c', '{
  "event": {
    "id": "a8978d97-c763-43bb-b2c1-d8a3891e668c",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-13 08:36:21.893+00', 35, 'fa203c02-e598-46c4-ae47-36f82d405f62', '{
  "event": {
    "id": "fa203c02-e598-46c4-ae47-36f82d405f62",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-13 08:36:21.893+00', 45, 'a4945f8d-9e42-4100-8f0a-fb763ddc048b', '{
  "event": {
    "id": "a4945f8d-9e42-4100-8f0a-fb763ddc048b",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-13 08:36:21.893+00', 34, '8b19a750-dcb0-4f2e-9235-5c17873a3b94', '{
  "event": {
    "id": "8b19a750-dcb0-4f2e-9235-5c17873a3b94",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-13 08:36:21.893+00', 39, '71a15e91-f83b-4d45-aaae-8dad0427b0b4', '{
  "event": {
    "id": "71a15e91-f83b-4d45-aaae-8dad0427b0b4",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-13 08:36:21.893+00', 40, '433e3ed8-81e2-427f-b481-256f886839da', '{
  "event": {
    "id": "433e3ed8-81e2-427f-b481-256f886839da",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-13 08:36:21.893+00', 44, 'c893cbce-a331-41b0-b24f-198ce761a90f', '{
  "event": {
    "id": "c893cbce-a331-41b0-b24f-198ce761a90f",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-13 08:36:21.893+00', 46, '1577262d-9e9b-4f58-baf8-203c274dd3f5', '{
  "event": {
    "id": "1577262d-9e9b-4f58-baf8-203c274dd3f5",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('sandwich', 'Snickers', '2019-11-13 08:36:21.893+00', 42, '57a53805-64f0-4975-8ddc-17d28b55ece3', '{
  "event": {
    "id": "57a53805-64f0-4975-8ddc-17d28b55ece3",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nina-von-c', 'Snickers', '2019-11-03 08:22:40.384+00', 21, '68a39f23-becb-47bd-9c76-7dd43864ffad', '{
  "event": {
    "id": "68a39f23-becb-47bd-9c76-7dd43864ffad",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('codello', 'Snickers', '2019-11-03 08:22:40.384+00', 16, '93e5da4f-4e85-4202-a0c5-7fed9deb531d', '{
  "event": {
    "id": "93e5da4f-4e85-4202-a0c5-7fed9deb531d",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nina-von-c', 'Snickers', '2019-11-03 08:22:40.384+00', 8, '3422c3d4-30db-400d-8e1d-6763df9e68d2', '{
  "event": {
    "id": "3422c3d4-30db-400d-8e1d-6763df9e68d2",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('carl-gross', 'Snickers', '2019-11-03 08:22:40.384+00', 1, '46362789-792a-4092-acd3-8ee5ca76bd70', '{
  "event": {
    "id": "46362789-792a-4092-acd3-8ee5ca76bd70",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nina-von-c', 'Snickers', '2019-11-03 08:22:40.384+00', 12, '996c901b-2e73-442f-89f9-7a41b6f5162a', '{
  "event": {
    "id": "996c901b-2e73-442f-89f9-7a41b6f5162a",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nina-von-c', 'Snickers', '2019-11-03 08:22:40.384+00', 15, 'a9fe5cdc-ad3d-4803-bd10-63dab26242bc', '{
  "event": {
    "id": "a9fe5cdc-ad3d-4803-bd10-63dab26242bc",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('carl-gross', 'Snickers', '2019-11-03 08:22:40.384+00', 3, '34c1f2e6-61e6-4836-a368-ae00806bcd0e', '{
  "event": {
    "id": "34c1f2e6-61e6-4836-a368-ae00806bcd0e",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nina-von-c', 'Snickers', '2019-11-03 08:22:40.384+00', 4, 'ad9f3473-068c-4f39-9939-c2f4086acc77', '{
  "event": {
    "id": "ad9f3473-068c-4f39-9939-c2f4086acc77",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('codello', 'Snickers', '2019-11-03 08:22:40.384+00', 13, '923c2062-0233-414c-b07f-20ae4c0124b8', '{
  "event": {
    "id": "923c2062-0233-414c-b07f-20ae4c0124b8",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nina-von-c', 'Snickers', '2019-11-03 08:22:40.384+00', 17, 'ceb09ed2-7db6-4ddf-b188-ec20dc493f74', '{
  "event": {
    "id": "ceb09ed2-7db6-4ddf-b188-ec20dc493f74",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('streamOne', 'ExampleEventTwo', '2019-11-03 08:22:40.384+00', 1, 'c668fe56-d24d-4d1c-92e3-a7f7507f7b39', '{"event":{"name":"ExampleEventTwo","version":1},"system":{"id":"alv123","name":"codello alvine","time":"2019-09-06 14:59:12","timezone":"Europe/Berlin"},"trigger":{"type":"system","name":"/path/to/script.php"},"payload":{}}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('codello', 'Snickers', '2019-11-03 08:22:40.384+00', 3, '7f72cf33-fac9-4e3b-8478-053aa2793bde', '{
  "event": {
    "id": "7f72cf33-fac9-4e3b-8478-053aa2793bde",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('streamOne', 'ExampleEventTwo', '2019-11-03 08:22:40.384+00', 1, 'ba8574b9-2fcf-4190-be20-adacaa4f6c96', '{"event":{"name":"ExampleEventTwo","version":1},"system":{"id":"alv123","name":"codello alvine","time":"2019-09-06 14:58:12","timezone":"Europe/Berlin"},"trigger":{"type":"system","name":"/path/to/script.php"},"payload":{}}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nina-von-c', 'Snickers', '2019-11-03 08:22:40.384+00', 3, '5c007bb7-8bfa-40a2-a543-8cf552b2f511', '{
  "event": {
    "id": "5c007bb7-8bfa-40a2-a543-8cf552b2f511",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nina-von-c', 'Snickers', '2019-11-03 08:22:40.384+00', 19, '8fd46ff6-2139-4910-b863-38d39877767c', '{
  "event": {
    "id": "8fd46ff6-2139-4910-b863-38d39877767c",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('nina-von-c', 'Snickers', '2019-11-03 08:22:40.384+00', 20, 'd7484065-2558-4219-ad70-5cc5a1ccb4c3', '{
  "event": {
    "id": "d7484065-2558-4219-ad70-5cc5a1ccb4c3",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('carl-gross', 'Snickers', '2019-11-18 08:23:55.578+00', 9, 'c11afa77-3247-4fad-8b66-fc8c955dff2d', '{
  "event": {
    "id": "c11afa77-3247-4fad-8b66-fc8c955dff2d",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('carl-gross', 'Snickers', '2019-11-18 08:23:55.578+00', 11, '0717b815-beb6-4453-b04b-af1d0e13ba90', '{
  "event": {
    "id": "0717b815-beb6-4453-b04b-af1d0e13ba90",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('carl-gross', 'Snickers', '2019-11-18 08:23:55.578+00', 21, '05147ea0-c935-41b9-8015-f0f3e799c653', '{
  "event": {
    "id": "05147ea0-c935-41b9-8015-f0f3e799c653",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('carl-gross', 'Snickers', '2019-11-18 08:23:55.578+00', 18, '861ba27e-4904-40c7-ada5-0e579777aa25', '{
  "event": {
    "id": "861ba27e-4904-40c7-ada5-0e579777aa25",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('carl-gross', 'Snickers', '2019-11-18 08:23:55.578+00', 28, '9f6061d1-81f1-4d42-9f8c-9087f44b6b33', '{
  "event": {
    "id": "9f6061d1-81f1-4d42-9f8c-9087f44b6b33",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('carl-gross', 'Snickers', '2019-11-18 08:23:55.578+00', 12, '190cc71b-7c0c-4f11-8ae5-96d9f4f66ef5', '{
  "event": {
    "id": "190cc71b-7c0c-4f11-8ae5-96d9f4f66ef5",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('carl-gross', 'Snickers', '2019-11-18 08:23:55.578+00', 10, '2fa37081-f905-474f-acb2-8d79a5446eb8', '{
  "event": {
    "id": "2fa37081-f905-474f-acb2-8d79a5446eb8",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('carl-gross', 'Snickers', '2019-11-18 08:23:55.578+00', 31, '66235752-f072-4eee-82d5-06771e246a36', '{
  "event": {
    "id": "66235752-f072-4eee-82d5-06771e246a36",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('carl-gross', 'Snickers', '2019-11-18 08:23:55.578+00', 29, 'b241f951-ab43-49fe-ad4f-af9bcea2a200', '{
  "event": {
    "id": "b241f951-ab43-49fe-ad4f-af9bcea2a200",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('carl-gross', 'Snickers', '2019-11-18 08:23:55.578+00', 25, '7d76a5ee-abe9-49c0-b11c-c44c781a43e6', '{
  "event": {
    "id": "7d76a5ee-abe9-49c0-b11c-c44c781a43e6",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('carl-gross', 'Snickers', '2019-11-18 08:23:55.578+00', 15, '3fde24c8-8fce-4824-8da5-59252de429b2', '{
  "event": {
    "id": "3fde24c8-8fce-4824-8da5-59252de429b2",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('carl-gross', 'Snickers', '2019-11-18 08:23:55.578+00', 20, '5349cfdd-7757-4c13-b528-d0eba70a08d9', '{
  "event": {
    "id": "5349cfdd-7757-4c13-b528-d0eba70a08d9",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('carl-gross', 'Snickers', '2019-11-18 08:23:55.578+00', 17, '02117693-0abe-4886-acbe-f07eead5ba68', '{
  "event": {
    "id": "02117693-0abe-4886-acbe-f07eead5ba68",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('carl-gross', 'Snickers', '2019-11-18 08:23:55.578+00', 22, '7d774cac-1525-4588-b5cc-86147ae5785d', '{
  "event": {
    "id": "7d774cac-1525-4588-b5cc-86147ae5785d",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('carl-gross', 'Snickers', '2019-11-18 08:23:55.578+00', 33, '95f843cd-c9d5-407b-aebb-5b047e7589af', '{
  "event": {
    "id": "95f843cd-c9d5-407b-aebb-5b047e7589af",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('carl-gross', 'Snickers', '2019-11-18 08:23:55.578+00', 19, '254659ec-399f-4341-bad7-c0fe0c83b0ba', '{
  "event": {
    "id": "254659ec-399f-4341-bad7-c0fe0c83b0ba",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('carl-gross', 'Snickers', '2019-11-18 08:23:55.578+00', 23, 'd1fb88d9-8eb2-4d7b-92d0-3d387d79945b', '{
  "event": {
    "id": "d1fb88d9-8eb2-4d7b-92d0-3d387d79945b",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('carl-gross', 'Snickers', '2019-11-18 08:23:55.578+00', 16, 'a36c7924-1815-4c38-a423-f7fdbd898df2', '{
  "event": {
    "id": "a36c7924-1815-4c38-a423-f7fdbd898df2",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('carl-gross', 'Snickers', '2019-11-18 08:23:55.578+00', 26, '997f603e-168a-4095-9c2a-8102ff87eae6', '{
  "event": {
    "id": "997f603e-168a-4095-9c2a-8102ff87eae6",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('carl-gross', 'Snickers', '2019-11-18 08:23:55.578+00', 27, 'a12da45b-e0c3-4974-99a6-0cf49f600c2d', '{
  "event": {
    "id": "a12da45b-e0c3-4974-99a6-0cf49f600c2d",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('carl-gross', 'Snickers', '2019-11-18 08:23:55.578+00', 14, '423cb595-5863-4041-b551-bebfc8b73b44', '{
  "event": {
    "id": "423cb595-5863-4041-b551-bebfc8b73b44",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('carl-gross', 'Snickers', '2019-11-18 08:23:55.578+00', 30, 'b3dfa9d1-8f18-4b52-b1ac-1c89948807b8', '{
  "event": {
    "id": "b3dfa9d1-8f18-4b52-b1ac-1c89948807b8",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('carl-gross', 'Snickers', '2019-11-18 08:23:55.578+00', 24, '943c2b40-ca4e-4267-90b8-afeb71302bfe', '{
  "event": {
    "id": "943c2b40-ca4e-4267-90b8-afeb71302bfe",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('carl-gross', 'Snickers', '2019-11-18 08:23:55.578+00', 32, 'c678842b-add3-47ca-9c23-b18e5149113b', '{
  "event": {
    "id": "c678842b-add3-47ca-9c23-b18e5149113b",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('carl-gross', 'Snickers', '2019-11-18 08:23:55.578+00', 13, 'c2e1210d-1b52-463f-9335-b0e688dcf53c', '{
  "event": {
    "id": "c2e1210d-1b52-463f-9335-b0e688dcf53c",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('carl-gross', 'Snickers', '2019-11-24 08:25:39.431+00', 60, '359bc47e-fb4b-4840-9dba-d523607e6002', '{
  "event": {
    "id": "359bc47e-fb4b-4840-9dba-d523607e6002",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-24 08:25:39.431+00', 14, '86560476-07f1-4e42-ac73-70d00ccc2a70', '{
  "event": {
    "id": "86560476-07f1-4e42-ac73-70d00ccc2a70",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('carl-gross', 'Snickers', '2019-11-24 08:25:39.431+00', 61, 'c0add9cc-34f2-410e-bc86-5c2762fd2d46', '{
  "event": {
    "id": "c0add9cc-34f2-410e-bc86-5c2762fd2d46",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-24 08:25:39.431+00', 1, 'ad615184-c240-4e33-9914-28ad7ee90617', '{
  "event": {
    "id": "ad615184-c240-4e33-9914-28ad7ee90617",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-24 08:25:39.431+00', 17, '7fe617d2-b5cc-4385-a48d-1cea7e203f38', '{
  "event": {
    "id": "7fe617d2-b5cc-4385-a48d-1cea7e203f38",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('carl-gross', 'Snickers', '2019-11-24 08:25:39.431+00', 65, 'cf23b473-677f-443f-9acf-aa22f5b15a24', '{
  "event": {
    "id": "cf23b473-677f-443f-9acf-aa22f5b15a24",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-24 08:25:39.431+00', 5, '487b0765-521f-4da9-a00c-1474c070cc0e', '{
  "event": {
    "id": "487b0765-521f-4da9-a00c-1474c070cc0e",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-24 08:25:39.431+00', 8, '80fda249-62a3-44ad-87c2-d5b0ced0dfd5', '{
  "event": {
    "id": "80fda249-62a3-44ad-87c2-d5b0ced0dfd5",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-24 08:25:39.431+00', 4, 'ce4e2c06-b3ce-4ac9-b8df-f810731a5101', '{
  "event": {
    "id": "ce4e2c06-b3ce-4ac9-b8df-f810731a5101",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-24 08:25:39.431+00', 22, 'b7ef57ba-17de-448d-9fe0-94ce5a0cc6e3', '{
  "event": {
    "id": "b7ef57ba-17de-448d-9fe0-94ce5a0cc6e3",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-24 08:25:39.431+00', 24, '246b12f3-44fe-4912-92a9-e9ce342b71cf', '{
  "event": {
    "id": "246b12f3-44fe-4912-92a9-e9ce342b71cf",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-24 08:25:39.431+00', 25, 'a84081a8-e744-4601-a376-32852e7c7f90', '{
  "event": {
    "id": "a84081a8-e744-4601-a376-32852e7c7f90",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-24 08:25:39.431+00', 2, '56f1975e-2513-4468-81c2-f1d880a669f5', '{
  "event": {
    "id": "56f1975e-2513-4468-81c2-f1d880a669f5",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('carl-gross', 'Snickers', '2019-11-24 08:25:39.431+00', 68, '6b0e53e0-0b35-4bba-8444-633afef8ae98', '{
  "event": {
    "id": "6b0e53e0-0b35-4bba-8444-633afef8ae98",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('carl-gross', 'Snickers', '2019-11-24 08:25:39.431+00', 62, '47e5ddc6-ab9a-48d7-95f8-b40de80ac41f', '{
  "event": {
    "id": "47e5ddc6-ab9a-48d7-95f8-b40de80ac41f",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-24 08:25:39.431+00', 7, '8b25ebd1-961e-46dd-9a8a-322a0abab934', '{
  "event": {
    "id": "8b25ebd1-961e-46dd-9a8a-322a0abab934",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('carl-gross', 'Snickers', '2019-11-24 08:25:39.431+00', 59, '1ff56771-aa10-400a-9d95-694d5603ebc3', '{
  "event": {
    "id": "1ff56771-aa10-400a-9d95-694d5603ebc3",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-24 08:25:39.431+00', 20, '7450c36a-304d-4a7c-88ab-929cbd238d88', '{
  "event": {
    "id": "7450c36a-304d-4a7c-88ab-929cbd238d88",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('carl-gross', 'Snickers', '2019-11-24 08:25:39.431+00', 66, 'e21e3a76-d8c3-4bb2-bdcd-97fce37e10b9', '{
  "event": {
    "id": "e21e3a76-d8c3-4bb2-bdcd-97fce37e10b9",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-24 08:25:39.431+00', 13, '6860bdc1-7a19-474d-b127-e73372482436', '{
  "event": {
    "id": "6860bdc1-7a19-474d-b127-e73372482436",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-24 08:25:39.431+00', 26, 'c23a4c6f-aa0d-4f85-bf6d-6567440caae8', '{
  "event": {
    "id": "c23a4c6f-aa0d-4f85-bf6d-6567440caae8",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('carl-gross', 'Snickers', '2019-11-24 08:25:39.431+00', 67, '5a30965a-ce5c-4287-aa09-e3906531d388', '{
  "event": {
    "id": "5a30965a-ce5c-4287-aa09-e3906531d388",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('carl-gross', 'Snickers', '2019-11-24 08:25:39.431+00', 64, '96b82a96-1dcb-4943-9def-9f10c36b3d70', '{
  "event": {
    "id": "96b82a96-1dcb-4943-9def-9f10c36b3d70",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-24 08:25:39.431+00', 3, '669a4d8e-a21c-4ec5-8361-655ba24dcd0b', '{
  "event": {
    "id": "669a4d8e-a21c-4ec5-8361-655ba24dcd0b",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-24 08:25:39.431+00', 23, '4cd4875a-714e-4e3e-b6b4-e7330fdca8f1', '{
  "event": {
    "id": "4cd4875a-714e-4e3e-b6b4-e7330fdca8f1",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-24 08:25:39.431+00', 12, '7f29f114-9b30-4d28-bc37-38244411cd14', '{
  "event": {
    "id": "7f29f114-9b30-4d28-bc37-38244411cd14",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-24 08:25:39.431+00', 15, 'c08d48e3-6256-46d4-90a4-8a9e6c3ee4a7', '{
  "event": {
    "id": "c08d48e3-6256-46d4-90a4-8a9e6c3ee4a7",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-24 08:25:39.431+00', 18, '8ec3d00e-b7cb-49c3-97c8-b4c7aceacd9a', '{
  "event": {
    "id": "8ec3d00e-b7cb-49c3-97c8-b4c7aceacd9a",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-24 08:25:39.431+00', 19, 'a9a509ac-4e6a-4e88-bdba-4324435ec313', '{
  "event": {
    "id": "a9a509ac-4e6a-4e88-bdba-4324435ec313",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-24 08:25:39.431+00', 16, 'a8db63a0-319d-409f-96a5-64284a757e0f', '{
  "event": {
    "id": "a8db63a0-319d-409f-96a5-64284a757e0f",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-24 08:25:39.431+00', 9, '11e44708-99c4-44e2-8132-63f92bf1e703', '{
  "event": {
    "id": "11e44708-99c4-44e2-8132-63f92bf1e703",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-24 08:25:39.431+00', 6, '9f297227-bdb2-492c-b15c-96942d642e25', '{
  "event": {
    "id": "9f297227-bdb2-492c-b15c-96942d642e25",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-24 08:25:39.431+00', 21, '4d777851-410e-4e23-a935-8a654d60d20b', '{
  "event": {
    "id": "4d777851-410e-4e23-a935-8a654d60d20b",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('carl-gross', 'Snickers', '2019-11-24 08:25:39.431+00', 63, '2b9fa99d-a319-4ca2-a551-000f796bd4fd', '{
  "event": {
    "id": "2b9fa99d-a319-4ca2-a551-000f796bd4fd",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-24 08:25:39.431+00', 11, '1c5f0269-284c-4255-9ede-6b2370a9f256', '{
  "event": {
    "id": "1c5f0269-284c-4255-9ede-6b2370a9f256",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-24 08:25:39.431+00', 10, '5db971c8-aaf1-4c0d-8d5a-f175f954fbc3', '{
  "event": {
    "id": "5db971c8-aaf1-4c0d-8d5a-f175f954fbc3",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-02 08:28:08.974+00', 37, 'd691420e-2348-4dd8-a3da-5ba7c7c8da97', '{
  "event": {
    "id": "d691420e-2348-4dd8-a3da-5ba7c7c8da97",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-02 08:28:08.974+00', 25, '8fc5bed4-f3a6-4034-b069-65f42a81db9c', '{
  "event": {
    "id": "8fc5bed4-f3a6-4034-b069-65f42a81db9c",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-02 08:28:08.974+00', 32, '9cf8ada8-1d2b-4ba5-a275-49181ebd57ba', '{
  "event": {
    "id": "9cf8ada8-1d2b-4ba5-a275-49181ebd57ba",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-02 08:28:08.974+00', 21, '846cb07d-0221-4da9-8191-498449a58f3f', '{
  "event": {
    "id": "846cb07d-0221-4da9-8191-498449a58f3f",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-02 08:28:08.974+00', 19, 'a9936ec8-6722-44e3-9ece-73c669a56a9f', '{
  "event": {
    "id": "a9936ec8-6722-44e3-9ece-73c669a56a9f",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-02 08:28:08.974+00', 30, '403839ac-7fc0-4297-9797-ad062cff6996', '{
  "event": {
    "id": "403839ac-7fc0-4297-9797-ad062cff6996",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-02 08:28:08.974+00', 36, '74b0cce8-0389-4537-9465-f7a12bcad302', '{
  "event": {
    "id": "74b0cce8-0389-4537-9465-f7a12bcad302",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-02 08:28:08.974+00', 22, '2f62ac42-df1b-4509-8dfc-d8b7d712a25d', '{
  "event": {
    "id": "2f62ac42-df1b-4509-8dfc-d8b7d712a25d",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-02 08:28:08.974+00', 39, '9c5a4591-2eff-4cf0-821c-4a7f258b0d7a', '{
  "event": {
    "id": "9c5a4591-2eff-4cf0-821c-4a7f258b0d7a",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-02 08:28:08.974+00', 33, 'a2991e3e-8499-4a7f-b43c-12457ca7fcc2', '{
  "event": {
    "id": "a2991e3e-8499-4a7f-b43c-12457ca7fcc2",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-02 08:28:08.974+00', 35, 'a789904a-070c-4069-bbb7-f5d3dce5a77b', '{
  "event": {
    "id": "a789904a-070c-4069-bbb7-f5d3dce5a77b",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-02 08:28:08.974+00', 29, '2af07553-ef1c-45ae-85df-7f4a3248da0b', '{
  "event": {
    "id": "2af07553-ef1c-45ae-85df-7f4a3248da0b",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-02 08:28:08.974+00', 23, '04eda8bd-1593-4728-a492-756483aa34d8', '{
  "event": {
    "id": "04eda8bd-1593-4728-a492-756483aa34d8",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-02 08:28:08.974+00', 24, '8a3f1c77-59c4-4745-9d62-f5f4d43ecca8', '{
  "event": {
    "id": "8a3f1c77-59c4-4745-9d62-f5f4d43ecca8",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-02 08:28:08.974+00', 31, '2c9f7a2c-20dc-4370-adc2-dbadcd95d048', '{
  "event": {
    "id": "2c9f7a2c-20dc-4370-adc2-dbadcd95d048",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-02 08:28:08.974+00', 26, '412a32e0-9c77-48b6-aea3-291f56226908', '{
  "event": {
    "id": "412a32e0-9c77-48b6-aea3-291f56226908",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-02 08:28:08.974+00', 34, 'f246e5c8-1ef9-4069-9f8f-42ff14a16074', '{
  "event": {
    "id": "f246e5c8-1ef9-4069-9f8f-42ff14a16074",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-02 08:28:08.974+00', 38, 'ebaa24d4-401f-4abd-b84f-536097dbc23f', '{
  "event": {
    "id": "ebaa24d4-401f-4abd-b84f-536097dbc23f",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-02 08:28:08.974+00', 40, '27666d42-38ca-49f2-b1de-2e05f7221bd3', '{
  "event": {
    "id": "27666d42-38ca-49f2-b1de-2e05f7221bd3",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-02 08:28:08.974+00', 20, '24b9174b-7139-4af2-90d9-2ef3aeae9eec', '{
  "event": {
    "id": "24b9174b-7139-4af2-90d9-2ef3aeae9eec",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-02 08:28:08.974+00', 28, '37178dc9-d783-4932-bdaa-775a16c65d34', '{
  "event": {
    "id": "37178dc9-d783-4932-bdaa-775a16c65d34",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-02 08:28:08.974+00', 27, '5d0462d1-f408-479b-be04-f000f9a0c298', '{
  "event": {
    "id": "5d0462d1-f408-479b-be04-f000f9a0c298",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-04 08:27:46.173+00', 12, 'db17233e-2570-4946-a69d-c6e44c9021c3', '{
  "event": {
    "id": "db17233e-2570-4946-a69d-c6e44c9021c3",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-04 08:27:46.173+00', 9, 'edfbd856-0bc0-4cd5-b0c8-967abcf8a77c', '{
  "event": {
    "id": "edfbd856-0bc0-4cd5-b0c8-967abcf8a77c",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-04 08:27:46.173+00', 16, '0a5f9ec5-809d-4a34-9d72-5853e0369645', '{
  "event": {
    "id": "0a5f9ec5-809d-4a34-9d72-5853e0369645",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-04 08:27:46.173+00', 40, '562ea355-108d-4206-b25f-d5d9b0f2f4dc', '{
  "event": {
    "id": "562ea355-108d-4206-b25f-d5d9b0f2f4dc",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-04 08:27:46.173+00', 10, '1925ef57-c311-4039-b3c4-e2c4b6166d6b', '{
  "event": {
    "id": "1925ef57-c311-4039-b3c4-e2c4b6166d6b",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-04 08:27:46.173+00', 43, 'f6250ea6-db55-4670-952e-915b885b121e', '{
  "event": {
    "id": "f6250ea6-db55-4670-952e-915b885b121e",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-04 08:27:46.173+00', 42, '0cc7a77b-4a4a-4416-954e-c3e6a343c54c', '{
  "event": {
    "id": "0cc7a77b-4a4a-4416-954e-c3e6a343c54c",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-04 08:27:46.173+00', 41, '19d79ef9-9559-4eac-ae00-74122b03d193', '{
  "event": {
    "id": "19d79ef9-9559-4eac-ae00-74122b03d193",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-04 08:27:46.173+00', 48, '4fca9825-8d43-46c4-a8b2-df7b7768cc68', '{
  "event": {
    "id": "4fca9825-8d43-46c4-a8b2-df7b7768cc68",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-04 08:27:46.173+00', 8, 'df84079b-15f8-4b01-8f85-5e1af707f626', '{
  "event": {
    "id": "df84079b-15f8-4b01-8f85-5e1af707f626",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-04 08:27:46.173+00', 14, 'eb6d2be8-9f94-4ddd-8621-2b2949595030', '{
  "event": {
    "id": "eb6d2be8-9f94-4ddd-8621-2b2949595030",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-04 08:27:46.173+00', 46, '15f68d1a-4359-42c8-a614-521caaae8987', '{
  "event": {
    "id": "15f68d1a-4359-42c8-a614-521caaae8987",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-04 08:27:46.173+00', 15, '425d11ae-542d-488f-b949-838c4dc68694', '{
  "event": {
    "id": "425d11ae-542d-488f-b949-838c4dc68694",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('miracle', 'Snickers', '2019-11-04 08:27:46.173+00', 44, 'ab036f54-2d59-4541-a02b-b7cb2ed20dae', '{
  "event": {
    "id": "ab036f54-2d59-4541-a02b-b7cb2ed20dae",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-04 08:27:46.173+00', 6, 'dc2de407-6d6d-4fcd-8fbc-5f2d1f798eae', '{
  "event": {
    "id": "dc2de407-6d6d-4fcd-8fbc-5f2d1f798eae",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-07 08:28:41.818+00', 58, 'd103a0c9-d1c0-448d-9b5b-ef07249c2849', '{
  "event": {
    "id": "d103a0c9-d1c0-448d-9b5b-ef07249c2849",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-07 08:28:41.818+00', 71, '2fcd42a5-77b2-4be5-9b81-a8cc62bfe98d', '{
  "event": {
    "id": "2fcd42a5-77b2-4be5-9b81-a8cc62bfe98d",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-07 08:28:41.818+00', 57, '599a71dc-774b-4d4a-8aa3-b4fe3679eebf', '{
  "event": {
    "id": "599a71dc-774b-4d4a-8aa3-b4fe3679eebf",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-07 08:28:41.818+00', 75, '3f1a3b96-ade1-4ac9-90ba-df14eb554542', '{
  "event": {
    "id": "3f1a3b96-ade1-4ac9-90ba-df14eb554542",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-07 08:28:41.818+00', 69, 'bdc3ea69-1608-413d-819b-9b68095d9325', '{
  "event": {
    "id": "bdc3ea69-1608-413d-819b-9b68095d9325",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-07 08:28:41.818+00', 67, 'd7c4db0f-c425-4548-ad05-d362875c6c59', '{
  "event": {
    "id": "d7c4db0f-c425-4548-ad05-d362875c6c59",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-07 08:28:41.818+00', 76, 'ebadf5f6-acd4-4826-8a4e-6e52f38615d2', '{
  "event": {
    "id": "ebadf5f6-acd4-4826-8a4e-6e52f38615d2",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-07 08:28:41.818+00', 59, '53c4ecf0-36b4-41bf-a928-1978e3841eb8', '{
  "event": {
    "id": "53c4ecf0-36b4-41bf-a928-1978e3841eb8",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-07 08:28:41.818+00', 64, '27b45a9e-196e-445f-ac0a-0001ecf951f1', '{
  "event": {
    "id": "27b45a9e-196e-445f-ac0a-0001ecf951f1",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-07 08:28:41.818+00', 74, '13ca615f-e8cb-4555-9de0-4dc63897d0be', '{
  "event": {
    "id": "13ca615f-e8cb-4555-9de0-4dc63897d0be",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-07 08:28:41.818+00', 56, 'baa5212d-7185-4391-b3b3-767ab4e46816', '{
  "event": {
    "id": "baa5212d-7185-4391-b3b3-767ab4e46816",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-07 08:28:41.818+00', 60, 'ebed51d2-dcc1-4ab3-9c0a-feb0cbec97d7', '{
  "event": {
    "id": "ebed51d2-dcc1-4ab3-9c0a-feb0cbec97d7",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-07 08:28:41.818+00', 66, '4537af85-7b29-4803-81ff-16bb61c56381', '{
  "event": {
    "id": "4537af85-7b29-4803-81ff-16bb61c56381",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-07 08:28:41.818+00', 61, '24d53d4b-f7db-4679-95da-e3e9e9a8ed39', '{
  "event": {
    "id": "24d53d4b-f7db-4679-95da-e3e9e9a8ed39",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-07 08:28:41.818+00', 62, 'c6d393f3-9287-44c1-b15e-97920f9a28d4', '{
  "event": {
    "id": "c6d393f3-9287-44c1-b15e-97920f9a28d4",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-07 08:28:41.818+00', 43, 'f3638c8a-c07d-426e-9cf7-4149c1ce30b9', '{
  "event": {
    "id": "f3638c8a-c07d-426e-9cf7-4149c1ce30b9",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-07 08:28:41.818+00', 54, '3243d152-b198-4fa9-90bc-aa3f9f9b6c1b', '{
  "event": {
    "id": "3243d152-b198-4fa9-90bc-aa3f9f9b6c1b",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-07 08:28:41.818+00', 52, '469c8ee1-0faa-4ca0-a3f3-e73554d77b8a', '{
  "event": {
    "id": "469c8ee1-0faa-4ca0-a3f3-e73554d77b8a",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-07 08:28:41.818+00', 49, 'bce7322d-9914-4e61-9e2a-9b68c775e053', '{
  "event": {
    "id": "bce7322d-9914-4e61-9e2a-9b68c775e053",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-07 08:28:41.818+00', 68, 'ec9b44b8-9a1e-4d80-a4e3-7aa404a20f05', '{
  "event": {
    "id": "ec9b44b8-9a1e-4d80-a4e3-7aa404a20f05",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-07 08:28:41.818+00', 53, 'eb4953fc-915c-42da-b16a-107203dc3c61', '{
  "event": {
    "id": "eb4953fc-915c-42da-b16a-107203dc3c61",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-07 08:28:41.818+00', 55, '3fe4d293-484b-4308-bc52-861469e59457', '{
  "event": {
    "id": "3fe4d293-484b-4308-bc52-861469e59457",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-07 08:28:41.818+00', 65, '66f7d259-0585-4169-8390-14139dd1ca45', '{
  "event": {
    "id": "66f7d259-0585-4169-8390-14139dd1ca45",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-07 08:28:41.818+00', 72, '470d522c-c765-4b4d-9f3b-6c371e5c07f3', '{
  "event": {
    "id": "470d522c-c765-4b4d-9f3b-6c371e5c07f3",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-07 08:28:41.818+00', 73, '24f9da98-4746-465c-9ed5-e5b9f9e41374', '{
  "event": {
    "id": "24f9da98-4746-465c-9ed5-e5b9f9e41374",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-07 08:28:41.818+00', 45, 'fbfa7777-a2e3-4449-9dd1-842ff8b1fcea', '{
  "event": {
    "id": "fbfa7777-a2e3-4449-9dd1-842ff8b1fcea",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-07 08:28:41.818+00', 41, '95d834e9-8353-452b-93e4-b588d0259a66', '{
  "event": {
    "id": "95d834e9-8353-452b-93e4-b588d0259a66",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-07 08:28:41.818+00', 63, '0cb21382-6d53-424e-b929-556181b83aed', '{
  "event": {
    "id": "0cb21382-6d53-424e-b929-556181b83aed",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-07 08:28:41.818+00', 70, '30a82f20-eda5-4407-9317-3480863653c2', '{
  "event": {
    "id": "30a82f20-eda5-4407-9317-3480863653c2",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-07 08:28:41.818+00', 51, 'b64e1b11-7cb9-4075-aede-0846ef55b501', '{
  "event": {
    "id": "b64e1b11-7cb9-4075-aede-0846ef55b501",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-11 08:30:00.359+00', 109, '0055deb3-30eb-44cb-b5cc-526bf14d6c42', '{
  "event": {
    "id": "0055deb3-30eb-44cb-b5cc-526bf14d6c42",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-11 08:30:00.359+00', 111, '7176c464-2894-482b-8679-77ebd30198ad', '{
  "event": {
    "id": "7176c464-2894-482b-8679-77ebd30198ad",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-11 08:30:00.359+00', 97, 'da3f4daf-3093-45f8-bf32-2a54afc2c20c', '{
  "event": {
    "id": "da3f4daf-3093-45f8-bf32-2a54afc2c20c",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-11 08:30:00.359+00', 84, '749d568f-a337-42d3-822c-2218515ea849', '{
  "event": {
    "id": "749d568f-a337-42d3-822c-2218515ea849",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-11 08:30:00.359+00', 107, '09776eb2-a749-491f-86fa-3eded166a8ed', '{
  "event": {
    "id": "09776eb2-a749-491f-86fa-3eded166a8ed",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-11 08:30:00.359+00', 83, '6bfe8d67-22dc-4e46-b17e-f4eecc007c64', '{
  "event": {
    "id": "6bfe8d67-22dc-4e46-b17e-f4eecc007c64",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-11 08:30:00.359+00', 86, 'e3361586-0306-493a-8e9c-04455f90105e', '{
  "event": {
    "id": "e3361586-0306-493a-8e9c-04455f90105e",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-11 08:30:00.359+00', 93, '822bea31-ee0c-477f-a167-c2e495346c2c', '{
  "event": {
    "id": "822bea31-ee0c-477f-a167-c2e495346c2c",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-11 08:30:00.359+00', 106, '9c101655-2043-4675-97fd-a578c5ff6cf5', '{
  "event": {
    "id": "9c101655-2043-4675-97fd-a578c5ff6cf5",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-11 08:30:00.359+00', 89, '1e027573-9b4b-4236-9184-73be40f25b09', '{
  "event": {
    "id": "1e027573-9b4b-4236-9184-73be40f25b09",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-11 08:30:00.359+00', 103, 'bae68b86-3df7-44c9-8918-57f464e48bc0', '{
  "event": {
    "id": "bae68b86-3df7-44c9-8918-57f464e48bc0",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-11 08:30:00.359+00', 90, 'e91ff2c4-50a8-4349-861d-80a8e5a5c0e1', '{
  "event": {
    "id": "e91ff2c4-50a8-4349-861d-80a8e5a5c0e1",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-11 08:30:00.359+00', 104, '12041d09-e0fc-4582-8d97-d4a76ba4eb00', '{
  "event": {
    "id": "12041d09-e0fc-4582-8d97-d4a76ba4eb00",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-11 08:30:00.359+00', 94, 'aa2ebc0a-1062-43f9-8c4a-fc4fb2585521', '{
  "event": {
    "id": "aa2ebc0a-1062-43f9-8c4a-fc4fb2585521",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-11 08:30:00.359+00', 87, 'd9b10c1f-2f1f-4b8a-b103-9804ab03a0e4', '{
  "event": {
    "id": "d9b10c1f-2f1f-4b8a-b103-9804ab03a0e4",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-11 08:30:00.359+00', 91, 'ddc56f50-e602-43f6-9d96-65b99e8542e3', '{
  "event": {
    "id": "ddc56f50-e602-43f6-9d96-65b99e8542e3",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-11 08:30:00.359+00', 98, 'c09bb1b0-b5a6-4681-a22e-24f469aa54fc', '{
  "event": {
    "id": "c09bb1b0-b5a6-4681-a22e-24f469aa54fc",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-11 08:30:00.359+00', 96, '5a263a4c-f08d-47c6-9ab6-9a097c4abf9f', '{
  "event": {
    "id": "5a263a4c-f08d-47c6-9ab6-9a097c4abf9f",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-11 08:30:00.359+00', 88, '9cc877ee-1f9f-4a54-8fc2-665b39fdb9bb', '{
  "event": {
    "id": "9cc877ee-1f9f-4a54-8fc2-665b39fdb9bb",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-11 08:30:00.359+00', 85, 'ab9f039c-d456-49a1-85f9-e96dca7a7dd0', '{
  "event": {
    "id": "ab9f039c-d456-49a1-85f9-e96dca7a7dd0",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-11 08:30:00.359+00', 101, '1700ce19-99ce-4a91-9ccc-7fab7f3628d3', '{
  "event": {
    "id": "1700ce19-99ce-4a91-9ccc-7fab7f3628d3",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-11 08:30:00.359+00', 99, '07cb71d6-12c9-4075-9241-399a52717f06', '{
  "event": {
    "id": "07cb71d6-12c9-4075-9241-399a52717f06",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-11 08:30:00.359+00', 105, '801f667c-7588-4f40-8757-c8fd8a3d39a5', '{
  "event": {
    "id": "801f667c-7588-4f40-8757-c8fd8a3d39a5",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-11 08:30:00.359+00', 108, '089fdcd8-9a9e-43aa-ba89-9c25792cba27', '{
  "event": {
    "id": "089fdcd8-9a9e-43aa-ba89-9c25792cba27",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-11 08:30:00.359+00', 102, '781ad8ac-5e6d-4445-96cc-27a688d48ffb', '{
  "event": {
    "id": "781ad8ac-5e6d-4445-96cc-27a688d48ffb",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-11 08:30:00.359+00', 110, '54bf1303-390d-4041-988c-da85db3c497b', '{
  "event": {
    "id": "54bf1303-390d-4041-988c-da85db3c497b",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-11 08:30:00.359+00', 100, '1bc06288-6706-4901-afe0-fac140916492', '{
  "event": {
    "id": "1bc06288-6706-4901-afe0-fac140916492",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-11 08:30:00.359+00', 92, 'e8595902-ec3a-4013-9ceb-869eaafa05cc', '{
  "event": {
    "id": "e8595902-ec3a-4013-9ceb-869eaafa05cc",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-11 08:30:00.359+00', 95, 'e0e91f52-1654-4b7f-9b47-a18510c04f68', '{
  "event": {
    "id": "e0e91f52-1654-4b7f-9b47-a18510c04f68",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-16 08:31:08.566+00', 150, '2e3abc7c-4880-4a05-b2ba-a7df9b98332e', '{
  "event": {
    "id": "2e3abc7c-4880-4a05-b2ba-a7df9b98332e",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-16 08:31:08.566+00', 157, '1990e8c4-cbec-4343-a9ab-21c6733afb71', '{
  "event": {
    "id": "1990e8c4-cbec-4343-a9ab-21c6733afb71",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-16 08:31:08.566+00', 133, '56ee1ed3-96bd-4ee0-a14d-18c2b65c8952', '{
  "event": {
    "id": "56ee1ed3-96bd-4ee0-a14d-18c2b65c8952",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-16 08:31:08.566+00', 167, '815b8426-4f5e-4180-918f-bd56502f6234', '{
  "event": {
    "id": "815b8426-4f5e-4180-918f-bd56502f6234",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-16 08:31:08.566+00', 129, 'ad124752-d7d0-48ab-9cf6-557ed4959290', '{
  "event": {
    "id": "ad124752-d7d0-48ab-9cf6-557ed4959290",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-16 08:31:08.566+00', 124, 'fbe55fe6-eec2-4ada-b60f-635326c37263', '{
  "event": {
    "id": "fbe55fe6-eec2-4ada-b60f-635326c37263",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-16 08:31:08.566+00', 165, '03429ac8-9835-4943-9ea4-9e6aec9f5323', '{
  "event": {
    "id": "03429ac8-9835-4943-9ea4-9e6aec9f5323",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-16 08:31:08.566+00', 160, '12225858-dc7a-4594-a82b-a9f30d3e0916', '{
  "event": {
    "id": "12225858-dc7a-4594-a82b-a9f30d3e0916",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-16 08:31:08.566+00', 156, 'fd89fd98-0e66-4732-9f43-f97b468a82d2', '{
  "event": {
    "id": "fd89fd98-0e66-4732-9f43-f97b468a82d2",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-16 08:31:08.566+00', 136, '726d1d14-e93b-40a0-b1ba-ee7006680048', '{
  "event": {
    "id": "726d1d14-e93b-40a0-b1ba-ee7006680048",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-16 08:31:08.566+00', 166, '4aea2696-da5b-432f-8f4d-018c3300a049', '{
  "event": {
    "id": "4aea2696-da5b-432f-8f4d-018c3300a049",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-16 08:31:08.566+00', 145, '81c6bd26-e320-42af-aa83-f66eee6ec4f2', '{
  "event": {
    "id": "81c6bd26-e320-42af-aa83-f66eee6ec4f2",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-16 08:31:08.566+00', 154, '032ffbe1-8930-4f55-a563-46627ea35849', '{
  "event": {
    "id": "032ffbe1-8930-4f55-a563-46627ea35849",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-16 08:31:08.566+00', 134, '8e35bc98-30b6-4252-9024-e0732f35aef6', '{
  "event": {
    "id": "8e35bc98-30b6-4252-9024-e0732f35aef6",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-16 08:31:08.566+00', 168, 'a67d388e-1b59-465f-9b6a-3232b3eaec09', '{
  "event": {
    "id": "a67d388e-1b59-465f-9b6a-3232b3eaec09",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-16 08:31:08.566+00', 163, '0d255e66-e444-4ba3-8a32-27d0e95dc8b2', '{
  "event": {
    "id": "0d255e66-e444-4ba3-8a32-27d0e95dc8b2",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-16 08:31:08.566+00', 139, 'de855558-686f-41a2-ad69-d637c5663f3f', '{
  "event": {
    "id": "de855558-686f-41a2-ad69-d637c5663f3f",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-16 08:31:08.566+00', 135, '1037bb23-d6e7-4b49-af4c-19649736dfa0', '{
  "event": {
    "id": "1037bb23-d6e7-4b49-af4c-19649736dfa0",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-16 08:31:08.566+00', 125, 'eeb6002a-5f9d-4155-85fb-b01bffb46b70', '{
  "event": {
    "id": "eeb6002a-5f9d-4155-85fb-b01bffb46b70",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-16 08:31:08.566+00', 170, '66b1b9bf-0267-4eff-9391-daad7a693632', '{
  "event": {
    "id": "66b1b9bf-0267-4eff-9391-daad7a693632",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-16 08:31:08.566+00', 138, '9d632965-b2d9-4c51-aa3b-21475369fd89', '{
  "event": {
    "id": "9d632965-b2d9-4c51-aa3b-21475369fd89",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-16 08:31:08.566+00', 116, '3e21e7bc-5bb5-4bfa-a12a-7da506dcc9bc', '{
  "event": {
    "id": "3e21e7bc-5bb5-4bfa-a12a-7da506dcc9bc",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-16 08:31:08.566+00', 140, 'c8236005-123d-4e62-b7e7-c81f0534eecd', '{
  "event": {
    "id": "c8236005-123d-4e62-b7e7-c81f0534eecd",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-16 08:31:08.566+00', 155, 'e32b3d3c-0399-4d17-8006-b427d6cd2b58', '{
  "event": {
    "id": "e32b3d3c-0399-4d17-8006-b427d6cd2b58",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-16 08:31:08.566+00', 117, '88057af6-23f3-4ca6-93ad-6e9f12afbf91', '{
  "event": {
    "id": "88057af6-23f3-4ca6-93ad-6e9f12afbf91",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-16 08:31:08.566+00', 115, '70427e79-ad91-424b-a408-7d8c56a609f1', '{
  "event": {
    "id": "70427e79-ad91-424b-a408-7d8c56a609f1",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-16 08:31:08.566+00', 131, 'e22bae68-c719-4365-820a-c71e9d477b8e', '{
  "event": {
    "id": "e22bae68-c719-4365-820a-c71e9d477b8e",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-16 08:31:08.566+00', 159, '99fae3df-37d0-4a6a-b8d3-20a4034e6529', '{
  "event": {
    "id": "99fae3df-37d0-4a6a-b8d3-20a4034e6529",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-16 08:31:08.566+00', 144, '70c0c0bb-7a5c-429f-9b85-26bd02fa5d61', '{
  "event": {
    "id": "70c0c0bb-7a5c-429f-9b85-26bd02fa5d61",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-16 08:31:08.566+00', 141, '80d34830-727a-4112-b1be-15efda9d1c38', '{
  "event": {
    "id": "80d34830-727a-4112-b1be-15efda9d1c38",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-16 08:31:08.566+00', 118, 'a60fccc3-80e6-4246-b4c1-e5111e3e23d1', '{
  "event": {
    "id": "a60fccc3-80e6-4246-b4c1-e5111e3e23d1",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-16 08:31:08.566+00', 123, 'fdb4be00-5ae9-4ad6-96ae-49d3fbd4bdac', '{
  "event": {
    "id": "fdb4be00-5ae9-4ad6-96ae-49d3fbd4bdac",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-16 08:31:08.566+00', 151, '9fd28bdd-d164-491e-840b-157bdfc2a10a', '{
  "event": {
    "id": "9fd28bdd-d164-491e-840b-157bdfc2a10a",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-16 08:31:08.566+00', 146, '4ac29804-eeac-42b3-8d6a-4ec620474592', '{
  "event": {
    "id": "4ac29804-eeac-42b3-8d6a-4ec620474592",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-16 08:31:08.566+00', 171, '1defe6b2-cf3c-4d5d-bad7-9765c0c1943c', '{
  "event": {
    "id": "1defe6b2-cf3c-4d5d-bad7-9765c0c1943c",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-16 08:31:08.566+00', 130, '5c361a65-159e-4e96-bd28-e1d294be031d', '{
  "event": {
    "id": "5c361a65-159e-4e96-bd28-e1d294be031d",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-16 08:31:08.566+00', 128, '86ca5ce3-a5ed-4a28-ac25-06f0f70df807', '{
  "event": {
    "id": "86ca5ce3-a5ed-4a28-ac25-06f0f70df807",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-16 08:31:08.566+00', 126, '9f57380e-1195-4fae-8e36-e06d39f92ff6', '{
  "event": {
    "id": "9f57380e-1195-4fae-8e36-e06d39f92ff6",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-16 08:31:08.566+00', 172, '7d5bddc4-5905-411b-8fea-8c6c0cbda774', '{
  "event": {
    "id": "7d5bddc4-5905-411b-8fea-8c6c0cbda774",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-16 08:31:08.566+00', 169, '40b45c2d-14bf-461f-bd56-349025519a2a', '{
  "event": {
    "id": "40b45c2d-14bf-461f-bd56-349025519a2a",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-16 08:31:08.566+00', 153, 'f1f508e1-3708-4683-a380-e1ef75e48bd5', '{
  "event": {
    "id": "f1f508e1-3708-4683-a380-e1ef75e48bd5",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-16 08:31:08.566+00', 148, '7ff7c43a-b9f9-418b-aca6-8b54f856bdd6', '{
  "event": {
    "id": "7ff7c43a-b9f9-418b-aca6-8b54f856bdd6",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-16 08:31:08.566+00', 132, 'f9d26b40-ab37-4e46-941e-2afd90cc3e29', '{
  "event": {
    "id": "f9d26b40-ab37-4e46-941e-2afd90cc3e29",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-16 08:31:08.566+00', 120, '169b8f2e-e75e-4a57-8bcf-0e3f390d5f26', '{
  "event": {
    "id": "169b8f2e-e75e-4a57-8bcf-0e3f390d5f26",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-16 08:31:08.566+00', 122, '6130db05-144b-4a41-8877-dc13e5848558', '{
  "event": {
    "id": "6130db05-144b-4a41-8877-dc13e5848558",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-16 08:31:08.566+00', 162, '10b4fbaa-44c6-459c-b4a4-d9930fa103b3', '{
  "event": {
    "id": "10b4fbaa-44c6-459c-b4a4-d9930fa103b3",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-16 08:31:08.566+00', 152, 'f6301886-600f-4666-8588-d089adf21c7d', '{
  "event": {
    "id": "f6301886-600f-4666-8588-d089adf21c7d",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-16 08:31:08.566+00', 127, 'f0e47f2d-4f7d-4491-a3be-a802b34d401c', '{
  "event": {
    "id": "f0e47f2d-4f7d-4491-a3be-a802b34d401c",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-16 08:31:08.566+00', 143, '4efd312e-3b53-4213-8739-9fa692eef516', '{
  "event": {
    "id": "4efd312e-3b53-4213-8739-9fa692eef516",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-16 08:31:08.566+00', 164, '8a2ae14d-304a-4576-ae4b-4258d6d6e04b', '{
  "event": {
    "id": "8a2ae14d-304a-4576-ae4b-4258d6d6e04b",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-16 08:31:08.566+00', 161, 'ff9b26f1-f1c1-45a0-94a9-a0351c549d75', '{
  "event": {
    "id": "ff9b26f1-f1c1-45a0-94a9-a0351c549d75",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-16 08:31:08.566+00', 149, '4e07e706-a063-44f4-8192-69e9bad3be18', '{
  "event": {
    "id": "4e07e706-a063-44f4-8192-69e9bad3be18",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-16 08:31:08.566+00', 174, '82e4b45e-1c4d-4614-ab38-a37f355f7909', '{
  "event": {
    "id": "82e4b45e-1c4d-4614-ab38-a37f355f7909",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-16 08:31:08.566+00', 158, '6613aa8a-709e-4f58-8d15-31f1f64c0272', '{
  "event": {
    "id": "6613aa8a-709e-4f58-8d15-31f1f64c0272",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-16 08:31:08.566+00', 137, 'cbd0d971-4dc3-4aaf-8e1c-6b73b382aa47', '{
  "event": {
    "id": "cbd0d971-4dc3-4aaf-8e1c-6b73b382aa47",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-16 08:31:08.566+00', 121, '938925f2-26e3-4757-ad91-410be3ebc418', '{
  "event": {
    "id": "938925f2-26e3-4757-ad91-410be3ebc418",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-16 08:31:08.566+00', 173, 'a8d2992e-1371-4440-9e87-417305e917b4', '{
  "event": {
    "id": "a8d2992e-1371-4440-9e87-417305e917b4",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-16 08:31:08.566+00', 147, '8f5f0f39-d411-4302-a365-39fdc467e2b9', '{
  "event": {
    "id": "8f5f0f39-d411-4302-a365-39fdc467e2b9",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-16 08:31:08.566+00', 142, 'd341aac1-e60f-4f3e-a307-4acedb009d03', '{
  "event": {
    "id": "d341aac1-e60f-4f3e-a307-4acedb009d03",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');
INSERT INTO public.events ("streamName", "eventName", "createdAt", sequence, "eventId", event) VALUES ('mavi', 'Snickers', '2019-11-16 08:31:08.566+00', 119, '38976ba0-429c-45e7-a2bb-2a3269349786', '{
  "event": {
    "id": "38976ba0-429c-45e7-a2bb-2a3269349786",
    "name": "Snickers",
    "version": 1
  },
  "system": {
    "id": "alv1",
    "name": "codello alvine",
    "time": "2019-09-06 13:58:12",
    "timezone": "Europe/Berlin"
  },
  "trigger": {
    "type": "system",
    "name": "/path/to/script.php"
  },
  "payload": {}
}');


--
-- TOC entry 2929 (class 0 OID 103365)
-- Dependencies: 205
-- Data for Name: producerStreamRelations; Type: TABLE DATA; Schema: public; Owner: root
--

INSERT INTO public."producerStreamRelations" ("producerId", "streamName") VALUES ('634e2cd7-bcb0-4dcd-a829-aadca93e3f7b', 'streamOne');
INSERT INTO public."producerStreamRelations" ("producerId", "streamName") VALUES ('f1f5cae6-30b7-43e7-a5e8-746a98bc265e', 'codello');
INSERT INTO public."producerStreamRelations" ("producerId", "streamName") VALUES ('f1f5cae6-30b7-43e7-a5e8-746a98bc265e', 'nina-von-c');
INSERT INTO public."producerStreamRelations" ("producerId", "streamName") VALUES ('f1f5cae6-30b7-43e7-a5e8-746a98bc265e', 'carl-gross');
INSERT INTO public."producerStreamRelations" ("producerId", "streamName") VALUES ('f1f5cae6-30b7-43e7-a5e8-746a98bc265e', 'miracle');
INSERT INTO public."producerStreamRelations" ("producerId", "streamName") VALUES ('f1f5cae6-30b7-43e7-a5e8-746a98bc265e', 'mavi');
INSERT INTO public."producerStreamRelations" ("producerId", "streamName") VALUES ('f1f5cae6-30b7-43e7-a5e8-746a98bc265e', 'maerz');
INSERT INTO public."producerStreamRelations" ("producerId", "streamName") VALUES ('f1f5cae6-30b7-43e7-a5e8-746a98bc265e', 'sandwich');
INSERT INTO public."producerStreamRelations" ("producerId", "streamName") VALUES ('f1f5cae6-30b7-43e7-a5e8-746a98bc265e', 'hatico');
INSERT INTO public."producerStreamRelations" ("producerId", "streamName") VALUES ('f1f5cae6-30b7-43e7-a5e8-746a98bc265e', 'nicowa');
