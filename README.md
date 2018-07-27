Gitlab Haile
========================


![Docker Automated build](https://img.shields.io/docker/automated/wgx731/gitlab-haile.svg?style=flat-square)

[![GitHub issues](https://img.shields.io/github/issues/wgx731/gitlab-haile.svg?style=flat-square)](https://github.com/wgx731/gitlab-haile/issues)

[![GitHub forks](https://img.shields.io/github/forks/wgx731/gitlab-haile.svg?style=flat-square)](https://github.com/wgx731/gitlab-haile/network)

[![GitHub stars](https://img.shields.io/github/stars/wgx731/gitlab-haile.svg?style=flat-square)](https://github.com/wgx731/gitlab-haile/stargazers)

[![GitHub license](https://img.shields.io/github/license/wgx731/gitlab-haile.svg?style=flat-square)](https://github.com/wgx731/gitlab-haile/blob/master/LICENSE)


## Idea Source

[Famous Marathon Runner](https://en.wikipedia.org/wiki/Marathon) as [Gitlab Runner](https://docs.gitlab.com/runner) docker image :runner:

![Image Of Haile Gebrselassie](https://upload.wikimedia.org/wikipedia/commons/4/43/Haile_Gebrselassie_Hengelo_2009.JPG)

## User Guide

#### How to use this image with gitlab runner

##### Use it as default image

Add the following lines at top of your `.gitlab-ci.yml` file, and make sure you are using [docker executor](https://docs.gitlab.com/runner/executors/docker.html) :
```
image: wgx731/gitlab-haile:1.1
```

##### Use it for a stage

The following is an example to use this image at a stage:
```
build-artifacts:
  stage: build-artifacts
  image: wgx731/gitlab-haile:1.1
  script: $PWD/scripts/build-artifacts.sh
  artifacts:
    name: "$CI_JOB_ID-$CI_JOB_STAGE-$CI_COMMIT_SHA-$APP_VERSION-artifacts"
    paths:
      - build/gitlab-pipeline-spring-boot-demo.jar
```

## Contributing

[Pull Requests](https://github.com/wgx731/gitlab-haile/pulls) are most welcome!

## Thanks

**gitlab-haile** © 2018+, [@wgx731]. Released under the [MIT](https://github.com/wgx731/gitlab-haile/blob/master/LICENSE) License.

Authored and maintained by [@wgx731] with help from contributors ([list][contributors]).

> GitHub [@wgx731]

[@wgx731]: https://github.com/wgx731
[contributors]: https://github.com/wgx731/gitlab-haile/contributors
