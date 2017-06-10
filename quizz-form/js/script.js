angular.module('quizz-form', [])
    .controller('QuizzController', function () {
        var vm = this;
        vm.questionIndex = 0;
        vm.answers = [];
        vm.showQuizz = true;
        vm.questionsList = [
            {
                "question": {
                    "id": 1,
                    "title": "quel est ton sport préféré"
                },

                "answers": [
                    {
                        "id": "1",
                        "content": "Foot"
                            },
                    {
                        "id": "2",
                        "content": "Cheval"
                            },
                    {
                        "id": "3",
                        "content": "Echec"
                            }
                                ]

                },
            {
                "question": {
                    "id": 1,
                    "title": "Chocolat"
                },

                "answers": [
                    {
                        "id": "1",
                        "content": "Un peu"
                            },
                    {
                        "id": "2",
                        "content": "Beaucoup"
                            },
                    {
                        "id": "3",
                        "content": "A la folie"
                            }
                                ]

                },
            {
                "question": {
                    "id": 1,
                    "title": "A ton avis je sus une fille ou un garcon"
                },

                "answers": [
                    {
                        "id": "1",
                        "content": "Fille"
                            },
                    {
                        "id": "2",
                        "content": "Garcon"
                            },
                    {
                        "id": "3",
                        "content": "Ni l'un, ni l'autre"
                            }
                                ]

                },
            {
                "question": {
                    "id": 1,
                    "title": "Question piège: quel est ton robot préféré"
                },

                "answers": [
                    {
                        "id": "1",
                        "content": "Nao"
                            },
                    {
                        "id": "2",
                        "content": "Buddy"
                            },
                    {
                        "id": "3",
                        "content": "Pepper, bien c'est moi"
                            }
                                ]

                },
            {
                "question": {
                    "id": 1,
                    "title": "Si tu devais m'emmener au restaurant, que me donnerez tu à manger"
                },

                "answers": [
                    {
                        "id": "1",
                        "content": "Des pates"
                            },
                    {
                        "id": "2",
                        "content": "Des sushis"
                            },
                    {
                        "id": "3",
                        "content": "Pizzas"
                            }
                                ]

                },
            {
                "question": {
                    "id": 1,
                    "title": "Chocolat"
                },

                "answers": [
                    {
                        "id": "1",
                        "content": "Un peu"
                            },
                    {
                        "id": "2",
                        "content": "Beaucoup"
                            },
                    {
                        "id": "3",
                        "content": "A la folie"
                            }
                                ]

                },
            {
                "question": {
                    "id": 1,
                    "title": "Dernière question, quel age crois-tu que j'ai"
                },

                "answers": [
                    {
                        "id": "1",
                        "content": "5"
                            },
                    {
                        "id": "2",
                        "content": "10"
                            },
                    {
                        "id": "3",
                        "content": "Je ne vieillis pas"
                            }
                                ]

                }

    ]

        vm.submitQuestion = function (answer) {
            if (vm.questionIndex < vm.questionsList.length-1) {
                vm.answers.push(answer);
                vm.questionIndex++;
            } else { //TODO send answers to DB
                vm.showQuizz = false;
            }
        }


    });


/*
Copyright 2017 Google Inc. All Rights Reserved.
Use of this source code is governed by an MIT-style license that
can be found in the LICENSE file at http://angular.io/license
*/