
FROM timbru31/ruby-node:3.1

WORKDIR /app/webapp/

RUN gem update bundler
COPY Gemfile Gemfile.lock /app/webapp/
RUN bundle install

COPY package.json package-lock.json /app/webapp/
RUN npm install

COPY . /app/webapp/

CMD ["npm", "start"]