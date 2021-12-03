FROM cartahub/devops

RUN sh -c "cd app/templates \
    && > index.html \ 
    && echo -e \"<h1>Jawaad Waheed</h1>\" >> index.html \ 
    && echo -e \"<h2>jawaadw@gmail.com</h2>\" >> index.html \ 
    && echo -e \"<h3><a href=\"https://github.com/jawaadw/CartaTest/actions\">Link to DockerHub Repo</a></h3>\" >> index.html \ 
    && cd ../.. \ 
    && carta-devops test"

CMD [ "carta-devops", "serve" ]
