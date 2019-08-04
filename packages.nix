{ fetchurl, fetchgit, linkFarm, runCommand }: rec {
  offline_cache = linkFarm "offline" packages;
  fetchPackGit = { url, name ? "gittar", rev, sha256 }: runCommand name {} ''
    tar --exclude-vcs -cf "$out" ${fetchgit { inherit url rev sha256; }}
  '';
  packages = [
    {
      name = "@babel-code-frame-7.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/@babel/code-frame/-/code-frame-7.0.0.tgz";
        sha1 = "06e2ab19bdb535385559aabb5ba59729482800f8";
      };
    }
    {
      name = "@babel-core-7.4.4.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/@babel/core/-/core-7.4.4.tgz";
        sha1 = "84055750b05fcd50f9915a826b44fa347a825250";
      };
    }
    {
      name = "@babel-generator-7.4.4.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/@babel/generator/-/generator-7.4.4.tgz";
        sha1 = "174a215eb843fc392c7edcaabeaa873de6e8f041";
      };
    }
    {
      name = "@babel-helper-function-name-7.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/@babel/helper-function-name/-/helper-function-name-7.1.0.tgz";
        sha1 = "a0ceb01685f73355d4360c1247f582bfafc8ff53";
      };
    }
    {
      name = "@babel-helper-get-function-arity-7.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/@babel/helper-get-function-arity/-/helper-get-function-arity-7.0.0.tgz";
        sha1 = "83572d4320e2a4657263734113c42868b64e49c3";
      };
    }
    {
      name = "@babel-helper-plugin-utils-7.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/@babel/helper-plugin-utils/-/helper-plugin-utils-7.0.0.tgz";
        sha1 = "bbb3fbee98661c569034237cc03967ba99b4f250";
      };
    }
    {
      name = "@babel-helper-split-export-declaration-7.4.4.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/@babel/helper-split-export-declaration/-/helper-split-export-declaration-7.4.4.tgz";
        sha1 = "ff94894a340be78f53f06af038b205c49d993677";
      };
    }
    {
      name = "@babel-helpers-7.4.4.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/@babel/helpers/-/helpers-7.4.4.tgz";
        sha1 = "868b0ef59c1dd4e78744562d5ce1b59c89f2f2a5";
      };
    }
    {
      name = "@babel-highlight-7.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/@babel/highlight/-/highlight-7.0.0.tgz";
        sha1 = "f710c38c8d458e6dd9a201afb637fcb781ce99e4";
      };
    }
    {
      name = "@babel-parser-7.4.4.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/@babel/parser/-/parser-7.4.4.tgz";
        sha1 = "5977129431b8fe33471730d255ce8654ae1250b6";
      };
    }
    {
      name = "@babel-plugin-syntax-object-rest-spread-7.2.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/@babel/plugin-syntax-object-rest-spread/-/plugin-syntax-object-rest-spread-7.2.0.tgz";
        sha1 = "3b7a3e733510c57e820b9142a6579ac8b0dfad2e";
      };
    }
    {
      name = "@babel-polyfill-7.4.4.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/@babel/polyfill/-/polyfill-7.4.4.tgz";
        sha1 = "78801cf3dbe657844eeabf31c1cae3828051e893";
      };
    }
    {
      name = "@babel-runtime-corejs2-7.4.5.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/@babel/runtime-corejs2/-/runtime-corejs2-7.4.5.tgz";
        sha1 = "3d892f0560df21bafb384dd7727e33853e95d3c9";
      };
    }
    {
      name = "@babel-runtime-7.4.5.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/@babel/runtime/-/runtime-7.4.5.tgz";
        sha1 = "582bb531f5f9dc67d2fcb682979894f75e253f12";
      };
    }
    {
      name = "@babel-template-7.4.4.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/@babel/template/-/template-7.4.4.tgz";
        sha1 = "f4b88d1225689a08f5bc3a17483545be9e4ed237";
      };
    }
    {
      name = "@babel-traverse-7.4.4.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/@babel/traverse/-/traverse-7.4.4.tgz";
        sha1 = "0776f038f6d78361860b6823887d4f3937133fe8";
      };
    }
    {
      name = "@babel-types-7.4.4.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/@babel/types/-/types-7.4.4.tgz";
        sha1 = "8db9e9a629bb7c29370009b4b779ed93fe57d5f0";
      };
    }
    {
      name = "@cliqz-oss-firefox-client-0.3.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/@cliqz-oss/firefox-client/-/firefox-client-0.3.1.tgz";
        sha1 = "86479239f060835608b06584afe5e0a1dd91613c";
      };
    }
    {
      name = "@cliqz-oss-node-firefox-connect-1.2.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/@cliqz-oss/node-firefox-connect/-/node-firefox-connect-1.2.1.tgz";
        sha1 = "1d42cf9a7ddcdde3ff232715d7712662966e2df4";
      };
    }
    {
      name = "@cnakazawa-watch-1.0.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/@cnakazawa/watch/-/watch-1.0.3.tgz";
        sha1 = "099139eaec7ebf07a27c1786a3ff64f39464d2ef";
      };
    }
    {
      name = "@jest-console-24.7.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/@jest/console/-/console-24.7.1.tgz";
        sha1 = "32a9e42535a97aedfe037e725bd67e954b459545";
      };
    }
    {
      name = "@jest-core-24.8.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/@jest/core/-/core-24.8.0.tgz";
        sha1 = "fbbdcd42a41d0d39cddbc9f520c8bab0c33eed5b";
      };
    }
    {
      name = "@jest-environment-24.8.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/@jest/environment/-/environment-24.8.0.tgz";
        sha1 = "0342261383c776bdd652168f68065ef144af0eac";
      };
    }
    {
      name = "@jest-fake-timers-24.8.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/@jest/fake-timers/-/fake-timers-24.8.0.tgz";
        sha1 = "2e5b80a4f78f284bcb4bd5714b8e10dd36a8d3d1";
      };
    }
    {
      name = "@jest-reporters-24.8.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/@jest/reporters/-/reporters-24.8.0.tgz";
        sha1 = "075169cd029bddec54b8f2c0fc489fd0b9e05729";
      };
    }
    {
      name = "@jest-source-map-24.3.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/@jest/source-map/-/source-map-24.3.0.tgz";
        sha1 = "563be3aa4d224caf65ff77edc95cd1ca4da67f28";
      };
    }
    {
      name = "@jest-test-result-24.8.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/@jest/test-result/-/test-result-24.8.0.tgz";
        sha1 = "7675d0aaf9d2484caa65e048d9b467d160f8e9d3";
      };
    }
    {
      name = "@jest-test-sequencer-24.8.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/@jest/test-sequencer/-/test-sequencer-24.8.0.tgz";
        sha1 = "2f993bcf6ef5eb4e65e8233a95a3320248cf994b";
      };
    }
    {
      name = "@jest-transform-24.8.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/@jest/transform/-/transform-24.8.0.tgz";
        sha1 = "628fb99dce4f9d254c6fd9341e3eea262e06fef5";
      };
    }
    {
      name = "@jest-types-24.8.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/@jest/types/-/types-24.8.0.tgz";
        sha1 = "f31e25948c58f0abd8c845ae26fcea1491dea7ad";
      };
    }
    {
      name = "@phenomnomnominal-tsquery-3.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/@phenomnomnominal/tsquery/-/tsquery-3.0.0.tgz";
        sha1 = "6f2f4dbf6304ff52b12cc7a5b979f20c3794a22a";
      };
    }
    {
      name = "@sindresorhus-is-0.14.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/@sindresorhus/is/-/is-0.14.0.tgz";
        sha1 = "9fb3a3cf3132328151f353de4632e01e52102bea";
      };
    }
    {
      name = "@snyk-composer-lockfile-parser-1.0.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/@snyk/composer-lockfile-parser/-/composer-lockfile-parser-1.0.2.tgz";
        sha1 = "d748e56076bc1c25b130c1f13ed705fa285a1994";
      };
    }
    {
      name = "@snyk-dep-graph-1.8.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/@snyk/dep-graph/-/dep-graph-1.8.1.tgz";
        sha1 = "4286dc42f691e826c4779a77722e7ac7fa692420";
      };
    }
    {
      name = "@snyk-gemfile-1.2.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/@snyk/gemfile/-/gemfile-1.2.0.tgz";
        sha1 = "919857944973cce74c650e5428aaf11bcd5c0457";
      };
    }
    {
      name = "@szmarczak-http-timer-1.1.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/@szmarczak/http-timer/-/http-timer-1.1.2.tgz";
        sha1 = "b1665e2c461a2cd92f4c1bbf50d5454de0d4b421";
      };
    }
    {
      name = "@types-agent-base-4.2.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/@types/agent-base/-/agent-base-4.2.0.tgz";
        sha1 = "00644e8b395b40e1bf50aaf1d22cabc1200d5051";
      };
    }
    {
      name = "@types-babel__core-7.1.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/@types/babel__core/-/babel__core-7.1.1.tgz";
        sha1 = "ce9a9e5d92b7031421e1d0d74ae59f572ba48be6";
      };
    }
    {
      name = "@types-babel__generator-7.0.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/@types/babel__generator/-/babel__generator-7.0.2.tgz";
        sha1 = "d2112a6b21fad600d7674274293c85dce0cb47fc";
      };
    }
    {
      name = "@types-babel__template-7.0.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/@types/babel__template/-/babel__template-7.0.2.tgz";
        sha1 = "4ff63d6b52eddac1de7b975a5223ed32ecea9307";
      };
    }
    {
      name = "@types-babel__traverse-7.0.6.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/@types/babel__traverse/-/babel__traverse-7.0.6.tgz";
        sha1 = "328dd1a8fc4cfe3c8458be9477b219ea158fd7b2";
      };
    }
    {
      name = "@types-css-0.0.31.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/@types/css/-/css-0.0.31.tgz";
        sha1 = "235cf80e4991a9d769fd640b4b8644b0a4139895";
      };
    }
    {
      name = "@types-debug-4.1.4.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/@types/debug/-/debug-4.1.4.tgz";
        sha1 = "56eec47706f0fd0b7c694eae2f3172e6b0b769da";
      };
    }
    {
      name = "@types-events-3.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/@types/events/-/events-3.0.0.tgz";
        sha1 = "2862f3f58a9a7f7c3e78d79f130dd4d71c25c2a7";
      };
    }
    {
      name = "@types-istanbul-lib-coverage-2.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/@types/istanbul-lib-coverage/-/istanbul-lib-coverage-2.0.1.tgz";
        sha1 = "42995b446db9a48a11a07ec083499a860e9138ff";
      };
    }
    {
      name = "@types-istanbul-lib-report-1.1.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/@types/istanbul-lib-report/-/istanbul-lib-report-1.1.1.tgz";
        sha1 = "e5471e7fa33c61358dd38426189c037a58433b8c";
      };
    }
    {
      name = "@types-istanbul-reports-1.1.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/@types/istanbul-reports/-/istanbul-reports-1.1.1.tgz";
        sha1 = "7a8cbf6a406f36c8add871625b278eaf0b0d255a";
      };
    }
    {
      name = "@types-jest-diff-20.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/@types/jest-diff/-/jest-diff-20.0.1.tgz";
        sha1 = "35cc15b9c4f30a18ef21852e255fdb02f6d59b89";
      };
    }
    {
      name = "@types-jest-24.0.15.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/@types/jest/-/jest-24.0.15.tgz";
        sha1 = "6c42d5af7fe3b44ffff7cc65de7bf741e8fa427f";
      };
    }
    {
      name = "@types-minimatch-3.0.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/@types/minimatch/-/minimatch-3.0.3.tgz";
        sha1 = "3dca0e3f33b200fc7d1139c0cd96c1268cadfd9d";
      };
    }
    {
      name = "@types-mithril-1.1.17.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/@types/mithril/-/mithril-1.1.17.tgz";
        sha1 = "1a5dde2a653ef6011cd36ef70eefe6bac0cb92e4";
      };
    }
    {
      name = "@types-nearley-2.11.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/@types/nearley/-/nearley-2.11.0.tgz";
        sha1 = "308fd197fdd6d76c52c4ca6f5bb8f42073afa91b";
      };
    }
    {
      name = "@types-node-12.6.8.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/@types/node/-/node-12.6.8.tgz";
        sha1 = "e469b4bf9d1c9832aee4907ba8a051494357c12c";
      };
    }
    {
      name = "@types-node-8.10.50.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/@types/node/-/node-8.10.50.tgz";
        sha1 = "f3d68482b1f54b5f4fba8daaac385db12bb6a706";
      };
    }
    {
      name = "@types-stack-utils-1.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/@types/stack-utils/-/stack-utils-1.0.1.tgz";
        sha1 = "0a851d3bd96498fa25c33ab7278ed3bd65f06c3e";
      };
    }
    {
      name = "@types-yargs-12.0.12.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/@types/yargs/-/yargs-12.0.12.tgz";
        sha1 = "45dd1d0638e8c8f153e87d296907659296873916";
      };
    }
    {
      name = "@webassemblyjs-ast-1.8.5.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/@webassemblyjs/ast/-/ast-1.8.5.tgz";
        sha1 = "51b1c5fe6576a34953bf4b253df9f0d490d9e359";
      };
    }
    {
      name = "@webassemblyjs-floating-point-hex-parser-1.8.5.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/@webassemblyjs/floating-point-hex-parser/-/floating-point-hex-parser-1.8.5.tgz";
        sha1 = "1ba926a2923613edce496fd5b02e8ce8a5f49721";
      };
    }
    {
      name = "@webassemblyjs-helper-api-error-1.8.5.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/@webassemblyjs/helper-api-error/-/helper-api-error-1.8.5.tgz";
        sha1 = "c49dad22f645227c5edb610bdb9697f1aab721f7";
      };
    }
    {
      name = "@webassemblyjs-helper-buffer-1.8.5.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/@webassemblyjs/helper-buffer/-/helper-buffer-1.8.5.tgz";
        sha1 = "fea93e429863dd5e4338555f42292385a653f204";
      };
    }
    {
      name = "@webassemblyjs-helper-code-frame-1.8.5.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/@webassemblyjs/helper-code-frame/-/helper-code-frame-1.8.5.tgz";
        sha1 = "9a740ff48e3faa3022b1dff54423df9aa293c25e";
      };
    }
    {
      name = "@webassemblyjs-helper-fsm-1.8.5.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/@webassemblyjs/helper-fsm/-/helper-fsm-1.8.5.tgz";
        sha1 = "ba0b7d3b3f7e4733da6059c9332275d860702452";
      };
    }
    {
      name = "@webassemblyjs-helper-module-context-1.8.5.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/@webassemblyjs/helper-module-context/-/helper-module-context-1.8.5.tgz";
        sha1 = "def4b9927b0101dc8cbbd8d1edb5b7b9c82eb245";
      };
    }
    {
      name = "@webassemblyjs-helper-wasm-bytecode-1.8.5.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/@webassemblyjs/helper-wasm-bytecode/-/helper-wasm-bytecode-1.8.5.tgz";
        sha1 = "537a750eddf5c1e932f3744206551c91c1b93e61";
      };
    }
    {
      name = "@webassemblyjs-helper-wasm-section-1.8.5.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/@webassemblyjs/helper-wasm-section/-/helper-wasm-section-1.8.5.tgz";
        sha1 = "74ca6a6bcbe19e50a3b6b462847e69503e6bfcbf";
      };
    }
    {
      name = "@webassemblyjs-ieee754-1.8.5.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/@webassemblyjs/ieee754/-/ieee754-1.8.5.tgz";
        sha1 = "712329dbef240f36bf57bd2f7b8fb9bf4154421e";
      };
    }
    {
      name = "@webassemblyjs-leb128-1.8.5.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/@webassemblyjs/leb128/-/leb128-1.8.5.tgz";
        sha1 = "044edeb34ea679f3e04cd4fd9824d5e35767ae10";
      };
    }
    {
      name = "@webassemblyjs-utf8-1.8.5.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/@webassemblyjs/utf8/-/utf8-1.8.5.tgz";
        sha1 = "a8bf3b5d8ffe986c7c1e373ccbdc2a0915f0cedc";
      };
    }
    {
      name = "@webassemblyjs-wasm-edit-1.8.5.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/@webassemblyjs/wasm-edit/-/wasm-edit-1.8.5.tgz";
        sha1 = "962da12aa5acc1c131c81c4232991c82ce56e01a";
      };
    }
    {
      name = "@webassemblyjs-wasm-gen-1.8.5.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/@webassemblyjs/wasm-gen/-/wasm-gen-1.8.5.tgz";
        sha1 = "54840766c2c1002eb64ed1abe720aded714f98bc";
      };
    }
    {
      name = "@webassemblyjs-wasm-opt-1.8.5.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/@webassemblyjs/wasm-opt/-/wasm-opt-1.8.5.tgz";
        sha1 = "b24d9f6ba50394af1349f510afa8ffcb8a63d264";
      };
    }
    {
      name = "@webassemblyjs-wasm-parser-1.8.5.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/@webassemblyjs/wasm-parser/-/wasm-parser-1.8.5.tgz";
        sha1 = "21576f0ec88b91427357b8536383668ef7c66b8d";
      };
    }
    {
      name = "@webassemblyjs-wast-parser-1.8.5.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/@webassemblyjs/wast-parser/-/wast-parser-1.8.5.tgz";
        sha1 = "e10eecd542d0e7bd394f6827c49f3df6d4eefb8c";
      };
    }
    {
      name = "@webassemblyjs-wast-printer-1.8.5.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/@webassemblyjs/wast-printer/-/wast-printer-1.8.5.tgz";
        sha1 = "114bbc481fd10ca0e23b3560fa812748b0bae5bc";
      };
    }
    {
      name = "@xtuc-ieee754-1.2.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/@xtuc/ieee754/-/ieee754-1.2.0.tgz";
        sha1 = "eef014a3145ae477a1cbc00cd1e552336dceb790";
      };
    }
    {
      name = "@xtuc-long-4.2.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/@xtuc/long/-/long-4.2.2.tgz";
        sha1 = "d291c6a4e97989b5c61d9acf396ae4fe133a718d";
      };
    }
    {
      name = "@yarnpkg-lockfile-1.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/@yarnpkg/lockfile/-/lockfile-1.1.0.tgz";
        sha1 = "e77a97fbd345b76d83245edcd17d393b1b41fb31";
      };
    }
    {
      name = "JSONSelect-0.2.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/JSONSelect/-/JSONSelect-0.2.1.tgz";
        sha1 = "415418a526d33fe31d74b4defa3c836d485ec203";
      };
    }
    {
      name = "abab-2.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/abab/-/abab-2.0.0.tgz";
        sha1 = "aba0ab4c5eee2d4c79d3487d85450fb2376ebb0f";
      };
    }
    {
      name = "abbrev-1.1.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/abbrev/-/abbrev-1.1.1.tgz";
        sha1 = "f8f2c887ad10bf67f634f005b6987fed3179aac8";
      };
    }
    {
      name = "acorn-globals-4.3.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/acorn-globals/-/acorn-globals-4.3.2.tgz";
        sha1 = "4e2c2313a597fd589720395f6354b41cd5ec8006";
      };
    }
    {
      name = "acorn-jsx-3.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/acorn-jsx/-/acorn-jsx-3.0.1.tgz";
        sha1 = "afdf9488fb1ecefc8348f6fb22f464e32a58b36b";
      };
    }
    {
      name = "acorn-jsx-5.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/acorn-jsx/-/acorn-jsx-5.0.1.tgz";
        sha1 = "32a064fd925429216a09b141102bfdd185fae40e";
      };
    }
    {
      name = "acorn-walk-6.1.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/acorn-walk/-/acorn-walk-6.1.1.tgz";
        sha1 = "d363b66f5fac5f018ff9c3a1e7b6f8e310cc3913";
      };
    }
    {
      name = "acorn-3.3.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/acorn/-/acorn-3.3.0.tgz";
        sha1 = "45e37fb39e8da3f25baee3ff5369e2bb5f22017a";
      };
    }
    {
      name = "acorn-5.7.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/acorn/-/acorn-5.7.3.tgz";
        sha1 = "67aa231bf8812974b85235a96771eb6bd07ea279";
      };
    }
    {
      name = "acorn-6.2.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/acorn/-/acorn-6.2.0.tgz";
        sha1 = "67f0da2fc339d6cfb5d6fb244fd449f33cd8bbe3";
      };
    }
    {
      name = "adbkit-logcat-1.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/adbkit-logcat/-/adbkit-logcat-1.1.0.tgz";
        sha1 = "01d7f9b0cef9093a30bcb3b007efff301508962f";
      };
    }
    {
      name = "adbkit-monkey-1.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/adbkit-monkey/-/adbkit-monkey-1.0.1.tgz";
        sha1 = "f291be701a2efc567a63fc7aa6afcded31430be1";
      };
    }
    {
      name = "adbkit-2.11.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/adbkit/-/adbkit-2.11.1.tgz";
        sha1 = "7da847fe561254f3121088947bc1907ef053e894";
      };
    }
    {
      name = "addons-linter-1.10.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/addons-linter/-/addons-linter-1.10.0.tgz";
        sha1 = "4b079647c860161602ff5772c1510bb63ec644ec";
      };
    }
    {
      name = "adm-zip-0.4.11.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/adm-zip/-/adm-zip-0.4.11.tgz";
        sha1 = "2aa54c84c4b01a9d0fb89bb11982a51f13e3d62a";
      };
    }
    {
      name = "adm-zip-0.4.13.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/adm-zip/-/adm-zip-0.4.13.tgz";
        sha1 = "597e2f8cc3672151e1307d3e95cddbc75672314a";
      };
    }
    {
      name = "agent-base-4.3.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/agent-base/-/agent-base-4.3.0.tgz";
        sha1 = "8165f01c436009bccad0b1d122f05ed770efc6ee";
      };
    }
    {
      name = "agent-base-4.2.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/agent-base/-/agent-base-4.2.1.tgz";
        sha1 = "d89e5999f797875674c07d87f260fc41e83e8ca9";
      };
    }
    {
      name = "ajv-errors-1.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/ajv-errors/-/ajv-errors-1.0.1.tgz";
        sha1 = "f35986aceb91afadec4102fbd85014950cefa64d";
      };
    }
    {
      name = "ajv-keywords-1.5.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/ajv-keywords/-/ajv-keywords-1.5.1.tgz";
        sha1 = "314dd0a4b3368fad3dfcdc54ede6171b886daf3c";
      };
    }
    {
      name = "ajv-keywords-3.4.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/ajv-keywords/-/ajv-keywords-3.4.0.tgz";
        sha1 = "4b831e7b531415a7cc518cd404e73f6193c6349d";
      };
    }
    {
      name = "ajv-merge-patch-4.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/ajv-merge-patch/-/ajv-merge-patch-4.1.0.tgz";
        sha1 = "cd580e5860ac53431d6aa901fa3d5e2eb2b74a6c";
      };
    }
    {
      name = "ajv-6.10.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/ajv/-/ajv-6.10.0.tgz";
        sha1 = "90d0d54439da587cd7e843bfb7045f50bd22bdf1";
      };
    }
    {
      name = "ajv-4.11.8.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/ajv/-/ajv-4.11.8.tgz";
        sha1 = "82ffb02b29e662ae53bdc20af15947706739c536";
      };
    }
    {
      name = "ajv-5.5.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/ajv/-/ajv-5.5.2.tgz";
        sha1 = "73b5eeca3fab653e3d3f9422b341ad42205dc965";
      };
    }
    {
      name = "ansi-align-2.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/ansi-align/-/ansi-align-2.0.0.tgz";
        sha1 = "c36aeccba563b89ceb556f3690f0b1d9e3547f7f";
      };
    }
    {
      name = "ansi-align-3.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/ansi-align/-/ansi-align-3.0.0.tgz";
        sha1 = "b536b371cf687caaef236c18d3e21fe3797467cb";
      };
    }
    {
      name = "ansi-colors-3.2.4.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/ansi-colors/-/ansi-colors-3.2.4.tgz";
        sha1 = "e3a3da4bfbae6c86a9c285625de124a234026fbf";
      };
    }
    {
      name = "ansi-escapes-1.4.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/ansi-escapes/-/ansi-escapes-1.4.0.tgz";
        sha1 = "d3a8a83b319aa67793662b13e761c7911422306e";
      };
    }
    {
      name = "ansi-escapes-3.2.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/ansi-escapes/-/ansi-escapes-3.2.0.tgz";
        sha1 = "8780b98ff9dbf5638152d1f1fe5c1d7b4442976b";
      };
    }
    {
      name = "ansi-escapes-4.2.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/ansi-escapes/-/ansi-escapes-4.2.0.tgz";
        sha1 = "c38600259cefba178ee3f7166c5ea3a5dd2e88fc";
      };
    }
    {
      name = "ansi-regex-2.1.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/ansi-regex/-/ansi-regex-2.1.1.tgz";
        sha1 = "c3b33ab5ee360d86e0e628f0468ae7ef27d654df";
      };
    }
    {
      name = "ansi-regex-3.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/ansi-regex/-/ansi-regex-3.0.0.tgz";
        sha1 = "ed0317c322064f79466c02966bddb605ab37d998";
      };
    }
    {
      name = "ansi-regex-4.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/ansi-regex/-/ansi-regex-4.0.0.tgz";
        sha1 = "70de791edf021404c3fd615aa89118ae0432e5a9";
      };
    }
    {
      name = "ansi-regex-4.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/ansi-regex/-/ansi-regex-4.1.0.tgz";
        sha1 = "8b9f8f08cf1acb843756a839ca8c7e3168c51997";
      };
    }
    {
      name = "ansi-styles-2.2.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/ansi-styles/-/ansi-styles-2.2.1.tgz";
        sha1 = "b432dd3358b634cf75e1e4664368240533c1ddbe";
      };
    }
    {
      name = "ansi-styles-3.2.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/ansi-styles/-/ansi-styles-3.2.0.tgz";
        sha1 = "c159b8d5be0f9e5a6f346dab94f16ce022161b88";
      };
    }
    {
      name = "ansi-styles-3.2.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/ansi-styles/-/ansi-styles-3.2.1.tgz";
        sha1 = "41fbb20243e50b12be0f04b8dedbf07520ce841d";
      };
    }
    {
      name = "ansi-styles-1.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/ansi-styles/-/ansi-styles-1.0.0.tgz";
        sha1 = "cb102df1c56f5123eab8b67cd7b98027a0279178";
      };
    }
    {
      name = "ansicolors-0.3.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/ansicolors/-/ansicolors-0.3.2.tgz";
        sha1 = "665597de86a9ffe3aa9bfbe6cae5c6ea426b4979";
      };
    }
    {
      name = "any-promise-1.3.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/any-promise/-/any-promise-1.3.0.tgz";
        sha1 = "abc6afeedcea52e809cdc0376aed3ce39635d17f";
      };
    }
    {
      name = "anymatch-2.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/anymatch/-/anymatch-2.0.0.tgz";
        sha1 = "bcb24b4f37934d9aa7ac17b4adaf89e7c76ef2eb";
      };
    }
    {
      name = "aproba-1.2.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/aproba/-/aproba-1.2.0.tgz";
        sha1 = "6802e6264efd18c790a1b0d517f0f2627bf2c94a";
      };
    }
    {
      name = "archiver-utils-1.3.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/archiver-utils/-/archiver-utils-1.3.0.tgz";
        sha1 = "e50b4c09c70bf3d680e32ff1b7994e9f9d895174";
      };
    }
    {
      name = "archiver-2.1.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/archiver/-/archiver-2.1.1.tgz";
        sha1 = "ff662b4a78201494a3ee544d3a33fe7496509ebc";
      };
    }
    {
      name = "archy-1.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/archy/-/archy-1.0.0.tgz";
        sha1 = "f9c8c13757cc1dd7bc379ac77b2c62a5c2868c40";
      };
    }
    {
      name = "are-we-there-yet-1.1.5.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/are-we-there-yet/-/are-we-there-yet-1.1.5.tgz";
        sha1 = "4b35c2944f062a8bfcda66410760350fe9ddfc21";
      };
    }
    {
      name = "arg-4.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/arg/-/arg-4.1.0.tgz";
        sha1 = "583c518199419e0037abb74062c37f8519e575f0";
      };
    }
    {
      name = "argparse-1.0.10.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/argparse/-/argparse-1.0.10.tgz";
        sha1 = "bcd6791ea5ae09725e17e5ad988134cd40b3d911";
      };
    }
    {
      name = "arr-diff-4.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/arr-diff/-/arr-diff-4.0.0.tgz";
        sha1 = "d6461074febfec71e7e15235761a329a5dc7c520";
      };
    }
    {
      name = "arr-flatten-1.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/arr-flatten/-/arr-flatten-1.1.0.tgz";
        sha1 = "36048bbff4e7b47e136644316c99669ea5ae91f1";
      };
    }
    {
      name = "arr-union-3.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/arr-union/-/arr-union-3.1.0.tgz";
        sha1 = "e39b09aea9def866a8f206e288af63919bae39c4";
      };
    }
    {
      name = "array-back-3.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/array-back/-/array-back-3.1.0.tgz";
        sha1 = "b8859d7a508871c9a7b2cf42f99428f65e96bfb0";
      };
    }
    {
      name = "array-differ-3.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/array-differ/-/array-differ-3.0.0.tgz";
        sha1 = "3cbb3d0f316810eafcc47624734237d6aee4ae6b";
      };
    }
    {
      name = "array-equal-1.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/array-equal/-/array-equal-1.0.0.tgz";
        sha1 = "8c2a5ef2472fd9ea742b04c77a75093ba2757c93";
      };
    }
    {
      name = "array-filter-0.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/array-filter/-/array-filter-0.0.1.tgz";
        sha1 = "7da8cf2e26628ed732803581fd21f67cacd2eeec";
      };
    }
    {
      name = "array-from-2.1.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/array-from/-/array-from-2.1.1.tgz";
        sha1 = "cfe9d8c26628b9dc5aecc62a9f5d8f1f352c1195";
      };
    }
    {
      name = "array-map-0.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/array-map/-/array-map-0.0.0.tgz";
        sha1 = "88a2bab73d1cf7bcd5c1b118a003f66f665fa662";
      };
    }
    {
      name = "array-reduce-0.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/array-reduce/-/array-reduce-0.0.0.tgz";
        sha1 = "173899d3ffd1c7d9383e4479525dbe278cab5f2b";
      };
    }
    {
      name = "array-union-1.0.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/array-union/-/array-union-1.0.2.tgz";
        sha1 = "9a34410e4f4e3da23dea375be5be70f24778ec39";
      };
    }
    {
      name = "array-union-2.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/array-union/-/array-union-2.1.0.tgz";
        sha1 = "b798420adbeb1de828d84acd8a2e23d3efe85e8d";
      };
    }
    {
      name = "array-uniq-1.0.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/array-uniq/-/array-uniq-1.0.3.tgz";
        sha1 = "af6ac877a25cc7f74e058894753858dfdb24fdb6";
      };
    }
    {
      name = "array-unique-0.3.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/array-unique/-/array-unique-0.3.2.tgz";
        sha1 = "a894b75d4bc4f6cd679ef3244a9fd8f46ae2d428";
      };
    }
    {
      name = "arrify-2.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/arrify/-/arrify-2.0.1.tgz";
        sha1 = "c9655e9331e0abcd588d2a7cad7e9956f66701fa";
      };
    }
    {
      name = "asap-2.0.6.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/asap/-/asap-2.0.6.tgz";
        sha1 = "e50347611d7e690943208bbdafebcbc2fb866d46";
      };
    }
    {
      name = "asn1.js-4.10.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/asn1.js/-/asn1.js-4.10.1.tgz";
        sha1 = "b9c2bf5805f1e64aadeed6df3a2bfafb5a73f5a0";
      };
    }
    {
      name = "asn1-0.2.4.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/asn1/-/asn1-0.2.4.tgz";
        sha1 = "8d2475dfab553bb33e77b54e59e880bb8ce23136";
      };
    }
    {
      name = "assert-plus-1.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/assert-plus/-/assert-plus-1.0.0.tgz";
        sha1 = "f12e0f3c5d77b0b1cdd9146942e4e96c1e4dd525";
      };
    }
    {
      name = "assert-1.5.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/assert/-/assert-1.5.0.tgz";
        sha1 = "55c109aaf6e0aefdb3dc4b71240c70bf574b18eb";
      };
    }
    {
      name = "assign-symbols-1.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/assign-symbols/-/assign-symbols-1.0.0.tgz";
        sha1 = "59667f41fadd4f20ccbc2bb96b8d4f7f78ec0367";
      };
    }
    {
      name = "ast-types-0.13.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/ast-types/-/ast-types-0.13.2.tgz";
        sha1 = "df39b677a911a83f3a049644fb74fdded23cea48";
      };
    }
    {
      name = "astral-regex-1.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/astral-regex/-/astral-regex-1.0.0.tgz";
        sha1 = "6c8c3fb827dd43ee3918f27b82782ab7658a6fd9";
      };
    }
    {
      name = "async-each-1.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/async-each/-/async-each-1.0.1.tgz";
        sha1 = "19d386a1d9edc6e7c1c85d388aedbcc56d33602d";
      };
    }
    {
      name = "async-limiter-1.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/async-limiter/-/async-limiter-1.0.0.tgz";
        sha1 = "78faed8c3d074ab81f22b4e985d79e8738f720f8";
      };
    }
    {
      name = "async-1.5.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/async/-/async-1.5.2.tgz";
        sha1 = "ec6a61ae56480c0c3cb241c95618e20892f9672a";
      };
    }
    {
      name = "async-2.6.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/async/-/async-2.6.1.tgz";
        sha1 = "b245a23ca71930044ec53fa46aa00a3e87c6a610";
      };
    }
    {
      name = "async-0.2.10.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/async/-/async-0.2.10.tgz";
        sha1 = "b6bbe0b0674b9d719708ca38de8c237cb526c3d1";
      };
    }
    {
      name = "async-2.5.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/async/-/async-2.5.0.tgz";
        sha1 = "843190fd6b7357a0b9e1c956edddd5ec8462b54d";
      };
    }
    {
      name = "async-3.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/async/-/async-3.0.1.tgz";
        sha1 = "dfeb34657d1e63c94c0eee424297bf8a2c9a8182";
      };
    }
    {
      name = "asynckit-0.4.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/asynckit/-/asynckit-0.4.0.tgz";
        sha1 = "c79ed97f7f34cb8f2ba1bc9790bcc366474b4b79";
      };
    }
    {
      name = "atob-2.1.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/atob/-/atob-2.1.1.tgz";
        sha1 = "ae2d5a729477f289d60dd7f96a6314a22dd6c22a";
      };
    }
    {
      name = "awesome-typescript-loader-5.2.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/awesome-typescript-loader/-/awesome-typescript-loader-5.2.1.tgz";
        sha1 = "a41daf7847515f4925cdbaa3075d61f289e913fc";
      };
    }
    {
      name = "aws-sign2-0.7.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/aws-sign2/-/aws-sign2-0.7.0.tgz";
        sha1 = "b46e890934a9591f2d2f6f86d7e6a9f1b3fe76a8";
      };
    }
    {
      name = "aws4-1.8.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/aws4/-/aws4-1.8.0.tgz";
        sha1 = "f0e003d9ca9e7f59c7a508945d7b2ef9a04a542f";
      };
    }
    {
      name = "babel-code-frame-6.26.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/babel-code-frame/-/babel-code-frame-6.26.0.tgz";
        sha1 = "63fd43f7dc1e3bb7ce35947db8fe369a3f58c74b";
      };
    }
    {
      name = "babel-jest-24.8.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/babel-jest/-/babel-jest-24.8.0.tgz";
        sha1 = "5c15ff2b28e20b0f45df43fe6b7f2aae93dba589";
      };
    }
    {
      name = "babel-plugin-istanbul-5.1.4.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/babel-plugin-istanbul/-/babel-plugin-istanbul-5.1.4.tgz";
        sha1 = "841d16b9a58eeb407a0ddce622ba02fe87a752ba";
      };
    }
    {
      name = "babel-plugin-jest-hoist-24.6.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/babel-plugin-jest-hoist/-/babel-plugin-jest-hoist-24.6.0.tgz";
        sha1 = "f7f7f7ad150ee96d7a5e8e2c5da8319579e78019";
      };
    }
    {
      name = "babel-polyfill-6.16.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/babel-polyfill/-/babel-polyfill-6.16.0.tgz";
        sha1 = "2d45021df87e26a374b6d4d1a9c65964d17f2422";
      };
    }
    {
      name = "babel-preset-jest-24.6.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/babel-preset-jest/-/babel-preset-jest-24.6.0.tgz";
        sha1 = "66f06136eefce87797539c0d63f1769cc3915984";
      };
    }
    {
      name = "babel-runtime-6.26.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/babel-runtime/-/babel-runtime-6.26.0.tgz";
        sha1 = "965c7058668e82b55d7bfe04ff2337bc8b5647fe";
      };
    }
    {
      name = "balanced-match-1.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/balanced-match/-/balanced-match-1.0.0.tgz";
        sha1 = "89b4d199ab2bee49de164ea02b89ce462d71b767";
      };
    }
    {
      name = "base64-js-1.3.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/base64-js/-/base64-js-1.3.0.tgz";
        sha1 = "cab1e6118f051095e58b5281aea8c1cd22bfc0e3";
      };
    }
    {
      name = "base-0.11.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/base/-/base-0.11.2.tgz";
        sha1 = "7bde5ced145b6d551a90db87f83c558b4eb48a8f";
      };
    }
    {
      name = "bcrypt-pbkdf-1.0.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/bcrypt-pbkdf/-/bcrypt-pbkdf-1.0.2.tgz";
        sha1 = "a4301d389b6a43f9b67ff3ca11a3f6637e360e9e";
      };
    }
    {
      name = "big.js-5.2.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/big.js/-/big.js-5.2.2.tgz";
        sha1 = "65f0af382f578bcdc742bd9c281e9cb2d7768328";
      };
    }
    {
      name = "binary-extensions-1.13.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/binary-extensions/-/binary-extensions-1.13.0.tgz";
        sha1 = "9523e001306a32444b907423f1de2164222f6ab1";
      };
    }
    {
      name = "bl-1.2.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/bl/-/bl-1.2.2.tgz";
        sha1 = "a160911717103c07410cef63ef51b397c025af9c";
      };
    }
    {
      name = "bluebird-3.4.6.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/bluebird/-/bluebird-3.4.6.tgz";
        sha1 = "01da8d821d87813d158967e743d5fe6c62cf8c0f";
      };
    }
    {
      name = "bluebird-3.5.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/bluebird/-/bluebird-3.5.3.tgz";
        sha1 = "7d01c6f9616c9a51ab0f8c549a79dfe6ec33efa7";
      };
    }
    {
      name = "bluebird-2.9.34.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/bluebird/-/bluebird-2.9.34.tgz";
        sha1 = "2f7b4ec80216328a9fddebdf69c8d4942feff7d8";
      };
    }
    {
      name = "bn.js-4.11.8.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/bn.js/-/bn.js-4.11.8.tgz";
        sha1 = "2cde09eb5ee341f484746bb0309b3253b1b1442f";
      };
    }
    {
      name = "boolbase-1.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/boolbase/-/boolbase-1.0.0.tgz";
        sha1 = "68dff5fbe60c51eb37725ea9e3ed310dcc1e776e";
      };
    }
    {
      name = "boxen-1.3.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/boxen/-/boxen-1.3.0.tgz";
        sha1 = "55c6c39a8ba58d9c61ad22cd877532deb665a20b";
      };
    }
    {
      name = "boxen-3.2.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/boxen/-/boxen-3.2.0.tgz";
        sha1 = "fbdff0de93636ab4450886b6ff45b92d098f45eb";
      };
    }
    {
      name = "brace-expansion-1.1.11.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/brace-expansion/-/brace-expansion-1.1.11.tgz";
        sha1 = "3c7fcbf529d87226f3d2f52b966ff5271eb441dd";
      };
    }
    {
      name = "braces-2.3.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/braces/-/braces-2.3.2.tgz";
        sha1 = "5979fd3f14cd531565e5fa2df1abfff1dfaee729";
      };
    }
    {
      name = "brorand-1.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/brorand/-/brorand-1.1.0.tgz";
        sha1 = "12c25efe40a45e3c323eb8675a0a0ce57b22371f";
      };
    }
    {
      name = "browser-process-hrtime-0.1.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/browser-process-hrtime/-/browser-process-hrtime-0.1.3.tgz";
        sha1 = "616f00faef1df7ec1b5bf9cfe2bdc3170f26c7b4";
      };
    }
    {
      name = "browser-resolve-1.11.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/browser-resolve/-/browser-resolve-1.11.3.tgz";
        sha1 = "9b7cbb3d0f510e4cb86bdbd796124d28b5890af6";
      };
    }
    {
      name = "browserify-aes-1.2.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/browserify-aes/-/browserify-aes-1.2.0.tgz";
        sha1 = "326734642f403dabc3003209853bb70ad428ef48";
      };
    }
    {
      name = "browserify-cipher-1.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/browserify-cipher/-/browserify-cipher-1.0.1.tgz";
        sha1 = "8d6474c1b870bfdabcd3bcfcc1934a10e94f15f0";
      };
    }
    {
      name = "browserify-des-1.0.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/browserify-des/-/browserify-des-1.0.2.tgz";
        sha1 = "3af4f1f59839403572f1c66204375f7a7f703e9c";
      };
    }
    {
      name = "browserify-rsa-4.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/browserify-rsa/-/browserify-rsa-4.0.1.tgz";
        sha1 = "21e0abfaf6f2029cf2fafb133567a701d4135524";
      };
    }
    {
      name = "browserify-sign-4.0.4.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/browserify-sign/-/browserify-sign-4.0.4.tgz";
        sha1 = "aa4eb68e5d7b658baa6bf6a57e630cbd7a93d298";
      };
    }
    {
      name = "browserify-zlib-0.2.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/browserify-zlib/-/browserify-zlib-0.2.0.tgz";
        sha1 = "2869459d9aa3be245fe8fe2ca1f46e2e7f54d73f";
      };
    }
    {
      name = "bs-logger-0.2.6.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/bs-logger/-/bs-logger-0.2.6.tgz";
        sha1 = "eb7d365307a72cf974cc6cda76b68354ad336bd8";
      };
    }
    {
      name = "bser-2.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/bser/-/bser-2.0.0.tgz";
        sha1 = "9ac78d3ed5d915804fd87acb158bc797147a1719";
      };
    }
    {
      name = "buffer-alloc-unsafe-1.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/buffer-alloc-unsafe/-/buffer-alloc-unsafe-1.1.0.tgz";
        sha1 = "bd7dc26ae2972d0eda253be061dba992349c19f0";
      };
    }
    {
      name = "buffer-alloc-1.2.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/buffer-alloc/-/buffer-alloc-1.2.0.tgz";
        sha1 = "890dd90d923a873e08e10e5fd51a57e5b7cce0ec";
      };
    }
    {
      name = "buffer-crc32-0.2.13.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/buffer-crc32/-/buffer-crc32-0.2.13.tgz";
        sha1 = "0d333e3f00eac50aa1454abd30ef8c2a5d9a7242";
      };
    }
    {
      name = "buffer-equal-constant-time-1.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/buffer-equal-constant-time/-/buffer-equal-constant-time-1.0.1.tgz";
        sha1 = "f8e71132f7ffe6e01a5c9697a4c6f3e48d5cc819";
      };
    }
    {
      name = "buffer-fill-1.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/buffer-fill/-/buffer-fill-1.0.0.tgz";
        sha1 = "f8f78b76789888ef39f205cd637f68e702122b2c";
      };
    }
    {
      name = "buffer-from-1.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/buffer-from/-/buffer-from-1.1.0.tgz";
        sha1 = "87fcaa3a298358e0ade6e442cfce840740d1ad04";
      };
    }
    {
      name = "buffer-xor-1.0.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/buffer-xor/-/buffer-xor-1.0.3.tgz";
        sha1 = "26e61ed1422fb70dd42e6e36729ed51d855fe8d9";
      };
    }
    {
      name = "buffer-4.9.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/buffer/-/buffer-4.9.1.tgz";
        sha1 = "6d1bb601b07a4efced97094132093027c95bc298";
      };
    }
    {
      name = "buffer-5.2.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/buffer/-/buffer-5.2.1.tgz";
        sha1 = "dd57fa0f109ac59c602479044dca7b8b3d0b71d6";
      };
    }
    {
      name = "builtin-modules-1.1.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/builtin-modules/-/builtin-modules-1.1.1.tgz";
        sha1 = "270f076c5a72c02f5b65a47df94c5fe3a278892f";
      };
    }
    {
      name = "builtin-status-codes-3.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/builtin-status-codes/-/builtin-status-codes-3.0.0.tgz";
        sha1 = "85982878e21b98e1c66425e03d0174788f569ee8";
      };
    }
    {
      name = "bunyan-1.8.12.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/bunyan/-/bunyan-1.8.12.tgz";
        sha1 = "f150f0f6748abdd72aeae84f04403be2ef113797";
      };
    }
    {
      name = "bytes-3.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/bytes/-/bytes-3.1.0.tgz";
        sha1 = "f6cf7933a360e0588fa9fde85651cdc7f805d1f6";
      };
    }
    {
      name = "cacache-11.3.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/cacache/-/cacache-11.3.2.tgz";
        sha1 = "2d81e308e3d258ca38125b676b98b2ac9ce69bfa";
      };
    }
    {
      name = "cache-base-1.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/cache-base/-/cache-base-1.0.1.tgz";
        sha1 = "0a7f46416831c8b662ee36fe4e7c59d76f666ab2";
      };
    }
    {
      name = "cacheable-request-6.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/cacheable-request/-/cacheable-request-6.1.0.tgz";
        sha1 = "20ffb8bd162ba4be11e9567d823db651052ca912";
      };
    }
    {
      name = "caller-path-0.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/caller-path/-/caller-path-0.1.0.tgz";
        sha1 = "94085ef63581ecd3daa92444a8fe94e82577751f";
      };
    }
    {
      name = "callsites-0.2.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/callsites/-/callsites-0.2.0.tgz";
        sha1 = "afab96262910a7f33c19a5775825c69f34e350ca";
      };
    }
    {
      name = "callsites-3.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/callsites/-/callsites-3.0.0.tgz";
        sha1 = "fb7eb569b72ad7a45812f93fd9430a3e410b3dd3";
      };
    }
    {
      name = "camelcase-5.3.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/camelcase/-/camelcase-5.3.1.tgz";
        sha1 = "e3c9b31569e106811df242f715725a1f4c494320";
      };
    }
    {
      name = "camelcase-2.1.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/camelcase/-/camelcase-2.1.1.tgz";
        sha1 = "7c1d16d679a1bbe59ca02cacecfb011e201f5a1f";
      };
    }
    {
      name = "camelcase-4.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/camelcase/-/camelcase-4.1.0.tgz";
        sha1 = "d545635be1e33c542649c69173e5de6acfae34dd";
      };
    }
    {
      name = "capture-exit-2.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/capture-exit/-/capture-exit-2.0.0.tgz";
        sha1 = "fb953bfaebeb781f62898239dabb426d08a509a4";
      };
    }
    {
      name = "capture-stack-trace-1.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/capture-stack-trace/-/capture-stack-trace-1.0.1.tgz";
        sha1 = "a6c0bbe1f38f3aa0b92238ecb6ff42c344d4135d";
      };
    }
    {
      name = "caseless-0.12.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/caseless/-/caseless-0.12.0.tgz";
        sha1 = "1b681c21ff84033c826543090689420d187151dc";
      };
    }
    {
      name = "chalk-2.4.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/chalk/-/chalk-2.4.2.tgz";
        sha1 = "cd42541677a54333cf541a49108c1432b44c9424";
      };
    }
    {
      name = "chalk-1.1.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/chalk/-/chalk-1.1.3.tgz";
        sha1 = "a8115c55e4a702fe4d150abd3872822a7e09fc98";
      };
    }
    {
      name = "chalk-0.4.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/chalk/-/chalk-0.4.0.tgz";
        sha1 = "5199a3ddcd0c1efe23bc08c1b027b06176e0c64f";
      };
    }
    {
      name = "chardet-0.7.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/chardet/-/chardet-0.7.0.tgz";
        sha1 = "90094849f0937f2eedc2425d0d28a9e5f0cbad9e";
      };
    }
    {
      name = "cheerio-1.0.0-rc.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/cheerio/-/cheerio-1.0.0-rc.3.tgz";
        sha1 = "094636d425b2e9c0f4eb91a46c05630c9a1a8bf6";
      };
    }
    {
      name = "child_process-1.0.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/child_process/-/child_process-1.0.2.tgz";
        sha1 = "b1f7e7fc73d25e7fd1d455adc94e143830182b5a";
      };
    }
    {
      name = "chokidar-2.1.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/chokidar/-/chokidar-2.1.2.tgz";
        sha1 = "9c23ea40b01638439e0513864d362aeacc5ad058";
      };
    }
    {
      name = "chownr-1.1.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/chownr/-/chownr-1.1.1.tgz";
        sha1 = "54726b8b8fff4df053c42187e801fb4412df1494";
      };
    }
    {
      name = "chrome-trace-event-1.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/chrome-trace-event/-/chrome-trace-event-1.0.0.tgz";
        sha1 = "45a91bd2c20c9411f0963b5aaeb9a1b95e09cc48";
      };
    }
    {
      name = "ci-info-1.6.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/ci-info/-/ci-info-1.6.0.tgz";
        sha1 = "2ca20dbb9ceb32d4524a683303313f0304b1e497";
      };
    }
    {
      name = "ci-info-2.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/ci-info/-/ci-info-2.0.0.tgz";
        sha1 = "67a9e964be31a51e15e5010d58e6f12834002f46";
      };
    }
    {
      name = "cipher-base-1.0.4.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/cipher-base/-/cipher-base-1.0.4.tgz";
        sha1 = "8760e4ecc272f4c363532f926d874aae2c1397de";
      };
    }
    {
      name = "circular-json-0.3.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/circular-json/-/circular-json-0.3.3.tgz";
        sha1 = "815c99ea84f6809529d2f45791bdf82711352d66";
      };
    }
    {
      name = "class-utils-0.3.6.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/class-utils/-/class-utils-0.3.6.tgz";
        sha1 = "f93369ae8b9a7ce02fd41faad0ca83033190c463";
      };
    }
    {
      name = "cleanslate-0.10.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/cleanslate/-/cleanslate-0.10.1.tgz";
        sha1 = "5af71a7c3b5b00d08586ad2050e5a7bda2850676";
      };
    }
    {
      name = "cli-boxes-1.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/cli-boxes/-/cli-boxes-1.0.0.tgz";
        sha1 = "4fa917c3e59c94a004cd61f8ee509da651687143";
      };
    }
    {
      name = "cli-boxes-2.2.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/cli-boxes/-/cli-boxes-2.2.0.tgz";
        sha1 = "538ecae8f9c6ca508e3c3c95b453fe93cb4c168d";
      };
    }
    {
      name = "cli-cursor-1.0.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/cli-cursor/-/cli-cursor-1.0.2.tgz";
        sha1 = "64da3f7d56a54412e59794bd62dc35295e8f2987";
      };
    }
    {
      name = "cli-cursor-2.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/cli-cursor/-/cli-cursor-2.1.0.tgz";
        sha1 = "b35dac376479facc3e94747d41d0d0f5238ffcb5";
      };
    }
    {
      name = "cli-width-2.2.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/cli-width/-/cli-width-2.2.0.tgz";
        sha1 = "ff19ede8a9a5e579324147b0c11f0fbcbabed639";
      };
    }
    {
      name = "cliui-3.2.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/cliui/-/cliui-3.2.0.tgz";
        sha1 = "120601537a916d29940f934da3b48d585a39213d";
      };
    }
    {
      name = "cliui-4.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/cliui/-/cliui-4.1.0.tgz";
        sha1 = "348422dbe82d800b3022eef4f6ac10bf2e4d1b49";
      };
    }
    {
      name = "cliui-5.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/cliui/-/cliui-5.0.0.tgz";
        sha1 = "deefcfdb2e800784aa34f46fa08e06851c7bbbc5";
      };
    }
    {
      name = "clone-deep-0.3.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/clone-deep/-/clone-deep-0.3.0.tgz";
        sha1 = "348c61ae9cdbe0edfe053d91ff4cc521d790ede8";
      };
    }
    {
      name = "clone-response-1.0.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/clone-response/-/clone-response-1.0.2.tgz";
        sha1 = "d1dc973920314df67fbeb94223b4ee350239e96b";
      };
    }
    {
      name = "clone-1.0.4.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/clone/-/clone-1.0.4.tgz";
        sha1 = "da309cc263df15994c688ca902179ca3c7cd7c7e";
      };
    }
    {
      name = "co-4.6.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/co/-/co-4.6.0.tgz";
        sha1 = "6ea6bdf3d853ae54ccb8e47bfa0bf3f9031fb184";
      };
    }
    {
      name = "code-point-at-1.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/code-point-at/-/code-point-at-1.1.0.tgz";
        sha1 = "0d070b4d043a5bea33a2f1a40e2edb3d9a4ccf77";
      };
    }
    {
      name = "collection-visit-1.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/collection-visit/-/collection-visit-1.0.0.tgz";
        sha1 = "4bc0373c164bc3291b4d368c829cf1a80a59dca0";
      };
    }
    {
      name = "color-convert-1.9.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/color-convert/-/color-convert-1.9.0.tgz";
        sha1 = "1accf97dd739b983bf994d56fec8f95853641b7a";
      };
    }
    {
      name = "color-name-1.1.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/color-name/-/color-name-1.1.3.tgz";
        sha1 = "a7d0558bd89c42f795dd42328f740831ca53bc25";
      };
    }
    {
      name = "colors-0.5.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/colors/-/colors-0.5.1.tgz";
        sha1 = "7d0023eaeb154e8ee9fce75dcb923d0ed1667774";
      };
    }
    {
      name = "columnify-1.5.4.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/columnify/-/columnify-1.5.4.tgz";
        sha1 = "4737ddf1c7b69a8a7c340570782e947eec8e78bb";
      };
    }
    {
      name = "combined-stream-1.0.7.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/combined-stream/-/combined-stream-1.0.7.tgz";
        sha1 = "2d1d24317afb8abe95d6d2c0b07b57813539d828";
      };
    }
    {
      name = "command-line-args-5.1.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/command-line-args/-/command-line-args-5.1.1.tgz";
        sha1 = "88e793e5bb3ceb30754a86863f0401ac92fd369a";
      };
    }
    {
      name = "commander-2.9.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/commander/-/commander-2.9.0.tgz";
        sha1 = "9c99094176e12240cb22d6c5146098400fe0f7d4";
      };
    }
    {
      name = "commander-2.20.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/commander/-/commander-2.20.0.tgz";
        sha1 = "d58bb2b5c1ee8f87b0d340027e9e94e222c5a422";
      };
    }
    {
      name = "commander-2.13.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/commander/-/commander-2.13.0.tgz";
        sha1 = "6964bca67685df7c1f1430c584f07d7597885b9c";
      };
    }
    {
      name = "common-tags-1.8.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/common-tags/-/common-tags-1.8.0.tgz";
        sha1 = "8e3153e542d4a39e9b10554434afaaf98956a937";
      };
    }
    {
      name = "commondir-1.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/commondir/-/commondir-1.0.1.tgz";
        sha1 = "ddd800da0c66127393cca5950ea968a3aaf1253b";
      };
    }
    {
      name = "component-emitter-1.2.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/component-emitter/-/component-emitter-1.2.1.tgz";
        sha1 = "137918d6d78283f7df7a6b7c5a63e140e69425e6";
      };
    }
    {
      name = "compress-commons-1.2.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/compress-commons/-/compress-commons-1.2.2.tgz";
        sha1 = "524a9f10903f3a813389b0225d27c48bb751890f";
      };
    }
    {
      name = "concat-map-0.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/concat-map/-/concat-map-0.0.1.tgz";
        sha1 = "d8a96bd77fd68df7793a73036a3ba0d5405d477b";
      };
    }
    {
      name = "concat-stream-1.6.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/concat-stream/-/concat-stream-1.6.2.tgz";
        sha1 = "904bdf194cd3122fc675c77fc4ac3d4ff0fd1a34";
      };
    }
    {
      name = "configstore-3.1.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/configstore/-/configstore-3.1.2.tgz";
        sha1 = "c6f25defaeef26df12dd33414b001fe81a543f8f";
      };
    }
    {
      name = "configstore-4.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/configstore/-/configstore-4.0.0.tgz";
        sha1 = "5933311e95d3687efb592c528b922d9262d227e7";
      };
    }
    {
      name = "console-browserify-1.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/console-browserify/-/console-browserify-1.1.0.tgz";
        sha1 = "f0241c45730a9fc6323b206dbf38edc741d0bb10";
      };
    }
    {
      name = "console-control-strings-1.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/console-control-strings/-/console-control-strings-1.1.0.tgz";
        sha1 = "3d7cf4464db6446ea644bf4b39507f9851008e8e";
      };
    }
    {
      name = "constants-browserify-1.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/constants-browserify/-/constants-browserify-1.0.0.tgz";
        sha1 = "c20b96d8c617748aaf1c16021760cd27fcb8cb75";
      };
    }
    {
      name = "convert-source-map-1.6.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/convert-source-map/-/convert-source-map-1.6.0.tgz";
        sha1 = "51b537a8c43e0f04dec1993bffcdd504e758ac20";
      };
    }
    {
      name = "copy-concurrently-1.0.5.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/copy-concurrently/-/copy-concurrently-1.0.5.tgz";
        sha1 = "92297398cae34937fcafd6ec8139c18051f0b5e0";
      };
    }
    {
      name = "copy-descriptor-0.1.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/copy-descriptor/-/copy-descriptor-0.1.1.tgz";
        sha1 = "676f6eb3c39997c2ee1ac3a924fd6124748f578d";
      };
    }
    {
      name = "copy-webpack-plugin-5.0.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/copy-webpack-plugin/-/copy-webpack-plugin-5.0.3.tgz";
        sha1 = "2179e3c8fd69f13afe74da338896f1f01a875b5c";
      };
    }
    {
      name = "core-js-2.6.5.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/core-js/-/core-js-2.6.5.tgz";
        sha1 = "44bc8d249e7fb2ff5d00e0341a7ffb94fbf67895";
      };
    }
    {
      name = "core-js-2.6.9.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/core-js/-/core-js-2.6.9.tgz";
        sha1 = "6b4b214620c834152e179323727fc19741b084f2";
      };
    }
    {
      name = "core-util-is-1.0.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/core-util-is/-/core-util-is-1.0.2.tgz";
        sha1 = "b5fd54220aa2bc5ab57aab7140c940754503c1a7";
      };
    }
    {
      name = "crc32-stream-2.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/crc32-stream/-/crc32-stream-2.0.0.tgz";
        sha1 = "e3cdd3b4df3168dd74e3de3fbbcb7b297fe908f4";
      };
    }
    {
      name = "crc-3.8.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/crc/-/crc-3.8.0.tgz";
        sha1 = "ad60269c2c856f8c299e2c4cc0de4556914056c6";
      };
    }
    {
      name = "create-ecdh-4.0.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/create-ecdh/-/create-ecdh-4.0.3.tgz";
        sha1 = "c9111b6f33045c4697f144787f9254cdc77c45ff";
      };
    }
    {
      name = "create-error-class-3.0.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/create-error-class/-/create-error-class-3.0.2.tgz";
        sha1 = "06be7abef947a3f14a30fd610671d401bca8b7b6";
      };
    }
    {
      name = "create-hash-1.2.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/create-hash/-/create-hash-1.2.0.tgz";
        sha1 = "889078af11a63756bcfb59bd221996be3a9ef196";
      };
    }
    {
      name = "create-hmac-1.1.7.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/create-hmac/-/create-hmac-1.1.7.tgz";
        sha1 = "69170c78b3ab957147b2b8b04572e47ead2243ff";
      };
    }
    {
      name = "cross-spawn-6.0.5.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/cross-spawn/-/cross-spawn-6.0.5.tgz";
        sha1 = "4a5ec7c64dfae22c3a14124dbacdee846d80cbc4";
      };
    }
    {
      name = "cross-spawn-5.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/cross-spawn/-/cross-spawn-5.1.0.tgz";
        sha1 = "e8bd0efee58fcff6f8f94510a0a554bbfa235449";
      };
    }
    {
      name = "crx-parser-0.1.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/crx-parser/-/crx-parser-0.1.2.tgz";
        sha1 = "7eeeed9eddc95e22c189382e34624044a89a5a6d";
      };
    }
    {
      name = "crypto-browserify-3.12.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/crypto-browserify/-/crypto-browserify-3.12.0.tgz";
        sha1 = "396cf9f3137f03e4b8e532c58f698254e00f80ec";
      };
    }
    {
      name = "crypto-random-string-1.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/crypto-random-string/-/crypto-random-string-1.0.0.tgz";
        sha1 = "a230f64f568310e1498009940790ec99545bca7e";
      };
    }
    {
      name = "91876274b0bfa5cd10ceebabe9f8cb29b0ccd7aa";
      path = fetchurl {
        url = "https://codeload.github.com/cmcaine/csp-serdes/tar.gz/91876274b0bfa5cd10ceebabe9f8cb29b0ccd7aa";
        sha1 = "862bf4e736ca3133188917a5f7ddb2817295d50d";
      };
    }
    {
      name = "css-select-1.2.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/css-select/-/css-select-1.2.0.tgz";
        sha1 = "2b3a110539c5355f1cd8d314623e870b121ec858";
      };
    }
    {
      name = "css-what-2.1.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/css-what/-/css-what-2.1.3.tgz";
        sha1 = "a6d7604573365fe74686c3f311c56513d88285f2";
      };
    }
    {
      name = "css-2.2.4.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/css/-/css-2.2.4.tgz";
        sha1 = "c646755c73971f2bba6a601e2cf2fd71b1298929";
      };
    }
    {
      name = "cssom-0.3.6.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/cssom/-/cssom-0.3.6.tgz";
        sha1 = "f85206cee04efa841f3c5982a74ba96ab20d65ad";
      };
    }
    {
      name = "cssstyle-1.2.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/cssstyle/-/cssstyle-1.2.2.tgz";
        sha1 = "427ea4d585b18624f6fdbf9de7a2a1a3ba713077";
      };
    }
    {
      name = "cyclist-0.2.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/cyclist/-/cyclist-0.2.2.tgz";
        sha1 = "1b33792e11e914a2fd6d6ed6447464444e5fa640";
      };
    }
    {
      name = "d-1.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/d/-/d-1.0.0.tgz";
        sha1 = "754bb5bfe55451da69a58b94d45f4c5b0462d58f";
      };
    }
    {
      name = "dashdash-1.14.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/dashdash/-/dashdash-1.14.1.tgz";
        sha1 = "853cfa0f7cbe2fed5de20326b8dd581035f6e2f0";
      };
    }
    {
      name = "data-uri-to-buffer-2.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/data-uri-to-buffer/-/data-uri-to-buffer-2.0.1.tgz";
        sha1 = "ca8f56fe38b1fd329473e9d1b4a9afcd8ce1c045";
      };
    }
    {
      name = "data-urls-1.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/data-urls/-/data-urls-1.1.0.tgz";
        sha1 = "15ee0582baa5e22bb59c77140da8f9c76963bbfe";
      };
    }
    {
      name = "date-now-0.1.4.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/date-now/-/date-now-0.1.4.tgz";
        sha1 = "eaf439fd4d4848ad74e5cc7dbef200672b9e345b";
      };
    }
    {
      name = "debounce-1.2.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/debounce/-/debounce-1.2.0.tgz";
        sha1 = "44a540abc0ea9943018dc0eaa95cce87f65cd131";
      };
    }
    {
      name = "debug-2.6.9.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/debug/-/debug-2.6.9.tgz";
        sha1 = "5d128515df134ff327e90a4c93f4e077a536341f";
      };
    }
    {
      name = "debug-3.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/debug/-/debug-3.1.0.tgz";
        sha1 = "5bb5a0672628b64149566ba16819e61518c67261";
      };
    }
    {
      name = "debug-4.1.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/debug/-/debug-4.1.1.tgz";
        sha1 = "3b72260255109c6b589cee050f1d516139664791";
      };
    }
    {
      name = "debug-3.2.6.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/debug/-/debug-3.2.6.tgz";
        sha1 = "e83d17de16d8a7efb7717edbe5fb10135eee629b";
      };
    }
    {
      name = "decamelize-3.2.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/decamelize/-/decamelize-3.2.0.tgz";
        sha1 = "84b8e8f4f8c579f938e35e2cc7024907e0090851";
      };
    }
    {
      name = "decamelize-1.2.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/decamelize/-/decamelize-1.2.0.tgz";
        sha1 = "f6534d15148269b20352e7bee26f501f9a191290";
      };
    }
    {
      name = "decode-uri-component-0.2.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/decode-uri-component/-/decode-uri-component-0.2.0.tgz";
        sha1 = "eb3913333458775cb84cd1a1fae062106bb87545";
      };
    }
    {
      name = "decompress-response-3.3.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/decompress-response/-/decompress-response-3.3.0.tgz";
        sha1 = "80a4dd323748384bfa248083622aedec982adff3";
      };
    }
    {
      name = "deep-equal-1.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/deep-equal/-/deep-equal-1.0.1.tgz";
        sha1 = "f5d260292b660e084eff4cdbc9f08ad3247448b5";
      };
    }
    {
      name = "deep-extend-0.6.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/deep-extend/-/deep-extend-0.6.0.tgz";
        sha1 = "c4fa7c95404a17a9c3e8ca7e1537312b736330ac";
      };
    }
    {
      name = "deep-is-0.1.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/deep-is/-/deep-is-0.1.3.tgz";
        sha1 = "b369d6fb5dbc13eecf524f91b070feedc357cf34";
      };
    }
    {
      name = "deepcopy-0.6.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/deepcopy/-/deepcopy-0.6.3.tgz";
        sha1 = "634780f2f8656ab771af8fa8431ed1ccee55c7b0";
      };
    }
    {
      name = "deepmerge-3.2.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/deepmerge/-/deepmerge-3.2.0.tgz";
        sha1 = "58ef463a57c08d376547f8869fdc5bcee957f44e";
      };
    }
    {
      name = "deepmerge-2.2.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/deepmerge/-/deepmerge-2.2.1.tgz";
        sha1 = "5d3ff22a01c00f645405a2fbc17d0778a1801170";
      };
    }
    {
      name = "defaults-1.0.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/defaults/-/defaults-1.0.3.tgz";
        sha1 = "c656051e9817d9ff08ed881477f3fe4019f3ef7d";
      };
    }
    {
      name = "defer-to-connect-1.0.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/defer-to-connect/-/defer-to-connect-1.0.2.tgz";
        sha1 = "4bae758a314b034ae33902b5aac25a8dd6a8633e";
      };
    }
    {
      name = "define-properties-1.1.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/define-properties/-/define-properties-1.1.3.tgz";
        sha1 = "cf88da6cbee26fe6db7094f61d870cbd84cee9f1";
      };
    }
    {
      name = "define-property-0.2.5.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/define-property/-/define-property-0.2.5.tgz";
        sha1 = "c35b1ef918ec3c990f9a5bc57be04aacec5c8116";
      };
    }
    {
      name = "define-property-1.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/define-property/-/define-property-1.0.0.tgz";
        sha1 = "769ebaaf3f4a63aad3af9e8d304c9bbe79bfb0e6";
      };
    }
    {
      name = "define-property-2.0.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/define-property/-/define-property-2.0.2.tgz";
        sha1 = "d459689e8d654ba77e02a817f8710d702cb16e9d";
      };
    }
    {
      name = "degenerator-1.0.4.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/degenerator/-/degenerator-1.0.4.tgz";
        sha1 = "fcf490a37ece266464d9cc431ab98c5819ced095";
      };
    }
    {
      name = "delayed-stream-1.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/delayed-stream/-/delayed-stream-1.0.0.tgz";
        sha1 = "df3ae199acadfb7d440aaae0b29e2272b24ec619";
      };
    }
    {
      name = "delegates-1.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/delegates/-/delegates-1.0.0.tgz";
        sha1 = "84c6e159b81904fdca59a0ef44cd870d31250f9a";
      };
    }
    {
      name = "depd-1.1.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/depd/-/depd-1.1.2.tgz";
        sha1 = "9bcd52e14c097763e749b274c4346ed2e560b5a9";
      };
    }
    {
      name = "des.js-1.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/des.js/-/des.js-1.0.0.tgz";
        sha1 = "c074d2e2aa6a8a9a07dbd61f9a15c2cd83ec8ecc";
      };
    }
    {
      name = "detect-file-1.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/detect-file/-/detect-file-1.0.0.tgz";
        sha1 = "f0d66d03672a825cb1b73bdb3fe62310c8e552b7";
      };
    }
    {
      name = "detect-libc-1.0.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/detect-libc/-/detect-libc-1.0.3.tgz";
        sha1 = "fa137c4bd698edf55cd5cd02ac559f91a4c4ba9b";
      };
    }
    {
      name = "detect-newline-2.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/detect-newline/-/detect-newline-2.1.0.tgz";
        sha1 = "f41f1c10be4b00e87b5f13da680759f2c5bfd3e2";
      };
    }
    {
      name = "diff-sequences-24.3.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/diff-sequences/-/diff-sequences-24.3.0.tgz";
        sha1 = "0f20e8a1df1abddaf4d9c226680952e64118b975";
      };
    }
    {
      name = "diff-3.5.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/diff/-/diff-3.5.0.tgz";
        sha1 = "800c0dd1e0a8bfbc95835c202ad220fe317e5a12";
      };
    }
    {
      name = "diff-4.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/diff/-/diff-4.0.1.tgz";
        sha1 = "0c667cb467ebbb5cea7f14f135cc2dba7780a8ff";
      };
    }
    {
      name = "diffie-hellman-5.0.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/diffie-hellman/-/diffie-hellman-5.0.3.tgz";
        sha1 = "40e8ee98f55a2149607146921c63e1ae5f3d2875";
      };
    }
    {
      name = "dir-glob-2.2.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/dir-glob/-/dir-glob-2.2.2.tgz";
        sha1 = "fa09f0694153c8918b18ba0deafae94769fc50c4";
      };
    }
    {
      name = "discontinuous-range-1.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/discontinuous-range/-/discontinuous-range-1.0.0.tgz";
        sha1 = "e38331f0844bba49b9a9cb71c771585aab1bc65a";
      };
    }
    {
      name = "dispensary-0.37.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/dispensary/-/dispensary-0.37.0.tgz";
        sha1 = "7c384d78984aabd1ed4915f633b4a5c8d5e6e8aa";
      };
    }
    {
      name = "dockerfile-ast-0.0.16.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/dockerfile-ast/-/dockerfile-ast-0.0.16.tgz";
        sha1 = "10b329d343329dab1de70375833495f85ad65913";
      };
    }
    {
      name = "doctrine-2.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/doctrine/-/doctrine-2.1.0.tgz";
        sha1 = "5cd01fc101621b42c4cd7f5d1a66243716d3f39d";
      };
    }
    {
      name = "doctrine-3.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/doctrine/-/doctrine-3.0.0.tgz";
        sha1 = "addebead72a6574db783639dc87a121773973961";
      };
    }
    {
      name = "dom-serializer-0.1.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/dom-serializer/-/dom-serializer-0.1.1.tgz";
        sha1 = "1ec4059e284babed36eec2941d4a970a189ce7c0";
      };
    }
    {
      name = "domain-browser-1.2.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/domain-browser/-/domain-browser-1.2.0.tgz";
        sha1 = "3d31f50191a6749dd1375a7f522e823d42e54eda";
      };
    }
    {
      name = "domelementtype-1.3.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/domelementtype/-/domelementtype-1.3.1.tgz";
        sha1 = "d048c44b37b0d10a7f2a3d5fee3f4333d790481f";
      };
    }
    {
      name = "domexception-1.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/domexception/-/domexception-1.0.1.tgz";
        sha1 = "937442644ca6a31261ef36e3ec677fe805582c90";
      };
    }
    {
      name = "domhandler-2.4.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/domhandler/-/domhandler-2.4.2.tgz";
        sha1 = "8805097e933d65e85546f726d60f5eb88b44f803";
      };
    }
    {
      name = "domutils-1.5.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/domutils/-/domutils-1.5.1.tgz";
        sha1 = "dcd8488a26f563d61079e48c9f7b7e32373682cf";
      };
    }
    {
      name = "dot-prop-4.2.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/dot-prop/-/dot-prop-4.2.0.tgz";
        sha1 = "1f19e0c2e1aa0e32797c49799f2837ac6af69c57";
      };
    }
    {
      name = "dtrace-provider-0.8.7.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/dtrace-provider/-/dtrace-provider-0.8.7.tgz";
        sha1 = "dc939b4d3e0620cfe0c1cd803d0d2d7ed04ffd04";
      };
    }
    {
      name = "duplexer2-0.1.4.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/duplexer2/-/duplexer2-0.1.4.tgz";
        sha1 = "8b12dab878c0d69e3e7891051662a32fc6bddcc1";
      };
    }
    {
      name = "duplexer3-0.1.4.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/duplexer3/-/duplexer3-0.1.4.tgz";
        sha1 = "ee01dd1cac0ed3cbc7fdbea37dc0a8f1ce002ce2";
      };
    }
    {
      name = "duplexify-3.7.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/duplexify/-/duplexify-3.7.1.tgz";
        sha1 = "2a4df5317f6ccfd91f86d6fd25d8d8a103b88309";
      };
    }
    {
      name = "ecc-jsbn-0.1.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/ecc-jsbn/-/ecc-jsbn-0.1.2.tgz";
        sha1 = "3a83a904e54353287874c564b7549386849a98c9";
      };
    }
    {
      name = "ecdsa-sig-formatter-1.0.11.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/ecdsa-sig-formatter/-/ecdsa-sig-formatter-1.0.11.tgz";
        sha1 = "ae0f0fa2d85045ef14a817daa3ce9acd0489e5bf";
      };
    }
    {
      name = "elliptic-6.4.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/elliptic/-/elliptic-6.4.1.tgz";
        sha1 = "c2d0b7776911b86722c632c3c06c60f2f819939a";
      };
    }
    {
      name = "email-validator-2.0.4.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/email-validator/-/email-validator-2.0.4.tgz";
        sha1 = "b8dfaa5d0dae28f1b03c95881d904d4e40bfe7ed";
      };
    }
    {
      name = "emoji-regex-7.0.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/emoji-regex/-/emoji-regex-7.0.3.tgz";
        sha1 = "933a04052860c85e83c122479c4748a8e4c72156";
      };
    }
    {
      name = "emojis-list-2.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/emojis-list/-/emojis-list-2.1.0.tgz";
        sha1 = "4daa4d9db00f9819880c79fa457ae5b09a1fd389";
      };
    }
    {
      name = "encoding-0.1.12.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/encoding/-/encoding-0.1.12.tgz";
        sha1 = "538b66f3ee62cd1ab51ec323829d1f9480c74beb";
      };
    }
    {
      name = "end-of-stream-1.4.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/end-of-stream/-/end-of-stream-1.4.1.tgz";
        sha1 = "ed29634d19baba463b6ce6b80a37213eab71ec43";
      };
    }
    {
      name = "end-of-stream-1.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/end-of-stream/-/end-of-stream-1.1.0.tgz";
        sha1 = "e9353258baa9108965efc41cb0ef8ade2f3cfb07";
      };
    }
    {
      name = "enhanced-resolve-4.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/enhanced-resolve/-/enhanced-resolve-4.1.0.tgz";
        sha1 = "41c7e0bfdfe74ac1ffe1e57ad6a5c6c9f3742a7f";
      };
    }
    {
      name = "entities-1.1.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/entities/-/entities-1.1.2.tgz";
        sha1 = "bdfa735299664dfafd34529ed4f8522a275fea56";
      };
    }
    {
      name = "errno-0.1.7.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/errno/-/errno-0.1.7.tgz";
        sha1 = "4684d71779ad39af177e3f007996f7c67c852618";
      };
    }
    {
      name = "error-ex-1.3.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/error-ex/-/error-ex-1.3.2.tgz";
        sha1 = "b4ac40648107fdcdcfae242f428bea8a14d4f1bf";
      };
    }
    {
      name = "es-abstract-1.13.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/es-abstract/-/es-abstract-1.13.0.tgz";
        sha1 = "ac86145fdd5099d8dd49558ccba2eaf9b88e24e9";
      };
    }
    {
      name = "es-to-primitive-1.2.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/es-to-primitive/-/es-to-primitive-1.2.0.tgz";
        sha1 = "edf72478033456e8dda8ef09e00ad9650707f377";
      };
    }
    {
      name = "es5-ext-0.10.30.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/es5-ext/-/es5-ext-0.10.30.tgz";
        sha1 = "7141a16836697dbabfaaaeee41495ce29f52c939";
      };
    }
    {
      name = "es6-error-4.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/es6-error/-/es6-error-4.0.0.tgz";
        sha1 = "f094c7041f662599bb12720da059d6b9c7ff0f40";
      };
    }
    {
      name = "es6-error-4.1.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/es6-error/-/es6-error-4.1.1.tgz";
        sha1 = "9e3af407459deed47e9a91f9b885a84eb05c561d";
      };
    }
    {
      name = "es6-iterator-2.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/es6-iterator/-/es6-iterator-2.0.1.tgz";
        sha1 = "8e319c9f0453bf575d374940a655920e59ca5512";
      };
    }
    {
      name = "es6-map-0.1.5.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/es6-map/-/es6-map-0.1.5.tgz";
        sha1 = "9136e0503dcc06a301690f0bb14ff4e364e949f0";
      };
    }
    {
      name = "es6-promise-2.3.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/es6-promise/-/es6-promise-2.3.0.tgz";
        sha1 = "96edb9f2fdb01995822b263dd8aadab6748181bc";
      };
    }
    {
      name = "es6-promise-4.2.6.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/es6-promise/-/es6-promise-4.2.6.tgz";
        sha1 = "b685edd8258886365ea62b57d30de28fadcd974f";
      };
    }
    {
      name = "es6-promisify-5.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/es6-promisify/-/es6-promisify-5.0.0.tgz";
        sha1 = "5109d62f3e56ea967c4b63505aef08291c8a5203";
      };
    }
    {
      name = "es6-promisify-6.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/es6-promisify/-/es6-promisify-6.0.1.tgz";
        sha1 = "6edaa45f3bd570ffe08febce66f7116be4b1cdb6";
      };
    }
    {
      name = "es6-set-0.1.5.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/es6-set/-/es6-set-0.1.5.tgz";
        sha1 = "d2b3ec5d4d800ced818db538d28974db0a73ccb1";
      };
    }
    {
      name = "es6-symbol-3.1.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/es6-symbol/-/es6-symbol-3.1.1.tgz";
        sha1 = "bf00ef4fdab6ba1b46ecb7b629b4c7ed5715cc77";
      };
    }
    {
      name = "es6-weak-map-2.0.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/es6-weak-map/-/es6-weak-map-2.0.2.tgz";
        sha1 = "5e3ab32251ffd1538a1f8e5ffa1357772f92d96f";
      };
    }
    {
      name = "escape-string-regexp-1.0.5.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/escape-string-regexp/-/escape-string-regexp-1.0.5.tgz";
        sha1 = "1b61c0562190a8dff6ae3bb2cf0200ca130b86d4";
      };
    }
    {
      name = "escodegen-1.11.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/escodegen/-/escodegen-1.11.1.tgz";
        sha1 = "c485ff8d6b4cdb89e27f4a856e91f118401ca510";
      };
    }
    {
      name = "escope-3.6.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/escope/-/escope-3.6.0.tgz";
        sha1 = "e01975e812781a163a6dadfdd80398dc64c889c3";
      };
    }
    {
      name = "eslint-plugin-no-unsafe-innerhtml-1.0.16.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/eslint-plugin-no-unsafe-innerhtml/-/eslint-plugin-no-unsafe-innerhtml-1.0.16.tgz";
        sha1 = "7d02878c8e9bf7916b88836d5ac122b42f151932";
      };
    }
    {
      name = "eslint-scope-4.0.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/eslint-scope/-/eslint-scope-4.0.3.tgz";
        sha1 = "ca03833310f6889a3264781aa82e63eb9cfe7848";
      };
    }
    {
      name = "eslint-utils-1.3.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/eslint-utils/-/eslint-utils-1.3.1.tgz";
        sha1 = "9a851ba89ee7c460346f97cf8939c7298827e512";
      };
    }
    {
      name = "eslint-visitor-keys-1.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/eslint-visitor-keys/-/eslint-visitor-keys-1.0.0.tgz";
        sha1 = "3f3180fb2e291017716acb4c9d6d5b5c34a6a81d";
      };
    }
    {
      name = "eslint-5.16.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/eslint/-/eslint-5.16.0.tgz";
        sha1 = "a1e3ac1aae4a3fbd8296fcf8f7ab7314cbb6abea";
      };
    }
    {
      name = "eslint-3.19.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/eslint/-/eslint-3.19.0.tgz";
        sha1 = "c8fc6201c7f40dd08941b87c085767386a679acc";
      };
    }
    {
      name = "espree-5.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/espree/-/espree-5.0.1.tgz";
        sha1 = "5d6526fa4fc7f0788a5cf75b15f30323e2f81f7a";
      };
    }
    {
      name = "espree-3.5.4.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/espree/-/espree-3.5.4.tgz";
        sha1 = "b0f447187c8a8bed944b815a660bddf5deb5d1a7";
      };
    }
    {
      name = "esprima-3.1.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/esprima/-/esprima-3.1.3.tgz";
        sha1 = "fdca51cee6133895e3c88d535ce49dbff62a4633";
      };
    }
    {
      name = "esprima-4.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/esprima/-/esprima-4.0.1.tgz";
        sha1 = "13b04cdb3e6c5d19df91ab6987a8695619b0aa71";
      };
    }
    {
      name = "esquery-1.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/esquery/-/esquery-1.0.1.tgz";
        sha1 = "406c51658b1f5991a5f9b62b1dc25b00e3e5c708";
      };
    }
    {
      name = "esrecurse-4.2.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/esrecurse/-/esrecurse-4.2.1.tgz";
        sha1 = "007a3b9fdbc2b3bb87e4879ea19c92fdbd3942cf";
      };
    }
    {
      name = "estraverse-4.2.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/estraverse/-/estraverse-4.2.0.tgz";
        sha1 = "0dee3fed31fcd469618ce7342099fc1afa0bdb13";
      };
    }
    {
      name = "esutils-2.0.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/esutils/-/esutils-2.0.2.tgz";
        sha1 = "0abf4f1caa5bcb1f7a9d8acc6dea4faaa04bac9b";
      };
    }
    {
      name = "event-emitter-0.3.5.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/event-emitter/-/event-emitter-0.3.5.tgz";
        sha1 = "df8c69eef1647923c7157b9ce83840610b02cc39";
      };
    }
    {
      name = "event-to-promise-0.8.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/event-to-promise/-/event-to-promise-0.8.0.tgz";
        sha1 = "4b84f11772b6f25f7752fc74d971531ac6f5b626";
      };
    }
    {
      name = "events-3.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/events/-/events-3.0.0.tgz";
        sha1 = "9a0a0dfaf62893d92b875b8f2698ca4114973e88";
      };
    }
    {
      name = "evp_bytestokey-1.0.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/evp_bytestokey/-/evp_bytestokey-1.0.3.tgz";
        sha1 = "7fcbdb198dc71959432efe13842684e0525acb02";
      };
    }
    {
      name = "exec-sh-0.3.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/exec-sh/-/exec-sh-0.3.2.tgz";
        sha1 = "6738de2eb7c8e671d0366aea0b0db8c6f7d7391b";
      };
    }
    {
      name = "execa-0.7.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/execa/-/execa-0.7.0.tgz";
        sha1 = "944becd34cc41ee32a63a9faf27ad5a65fc59777";
      };
    }
    {
      name = "execa-1.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/execa/-/execa-1.0.0.tgz";
        sha1 = "c6236a5bb4df6d6f15e88e7f017798216749ddd8";
      };
    }
    {
      name = "exit-hook-1.1.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/exit-hook/-/exit-hook-1.1.1.tgz";
        sha1 = "f05ca233b48c05d54fff07765df8507e95c02ff8";
      };
    }
    {
      name = "exit-0.1.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/exit/-/exit-0.1.2.tgz";
        sha1 = "0632638f8d877cc82107d30a0fff1a17cba1cd0c";
      };
    }
    {
      name = "expand-brackets-2.1.4.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/expand-brackets/-/expand-brackets-2.1.4.tgz";
        sha1 = "b77735e315ce30f6b6eff0f83b04151a22449622";
      };
    }
    {
      name = "expand-tilde-2.0.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/expand-tilde/-/expand-tilde-2.0.2.tgz";
        sha1 = "97e801aa052df02454de46b02bf621642cdc8502";
      };
    }
    {
      name = "expect-24.8.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/expect/-/expect-24.8.0.tgz";
        sha1 = "471f8ec256b7b6129ca2524b2a62f030df38718d";
      };
    }
    {
      name = "extend-shallow-2.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/extend-shallow/-/extend-shallow-2.0.1.tgz";
        sha1 = "51af7d614ad9a9f610ea1bafbb989d6b1c56890f";
      };
    }
    {
      name = "extend-shallow-3.0.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/extend-shallow/-/extend-shallow-3.0.2.tgz";
        sha1 = "26a71aaf073b39fb2127172746131c2704028db8";
      };
    }
    {
      name = "extend-3.0.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/extend/-/extend-3.0.2.tgz";
        sha1 = "f8b1136b4071fbd8eb140aff858b1019ec2915fa";
      };
    }
    {
      name = "external-editor-3.0.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/external-editor/-/external-editor-3.0.3.tgz";
        sha1 = "5866db29a97826dbe4bf3afd24070ead9ea43a27";
      };
    }
    {
      name = "extglob-2.0.4.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/extglob/-/extglob-2.0.4.tgz";
        sha1 = "ad00fe4dc612a9232e8718711dc5cb5ab0285543";
      };
    }
    {
      name = "extsprintf-1.3.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/extsprintf/-/extsprintf-1.3.0.tgz";
        sha1 = "96918440e3041a7a414f8c52e3c574eb3c3e1e05";
      };
    }
    {
      name = "fast-deep-equal-1.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/fast-deep-equal/-/fast-deep-equal-1.1.0.tgz";
        sha1 = "c053477817c86b51daa853c81e059b733d023614";
      };
    }
    {
      name = "fast-deep-equal-2.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/fast-deep-equal/-/fast-deep-equal-2.0.1.tgz";
        sha1 = "7b05218ddf9667bf7f370bf7fdb2cb15fdd0aa49";
      };
    }
    {
      name = "fast-json-patch-2.0.7.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/fast-json-patch/-/fast-json-patch-2.0.7.tgz";
        sha1 = "55864b08b1e50381d2f37fd472bb2e18fe54a733";
      };
    }
    {
      name = "fast-json-stable-stringify-2.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/fast-json-stable-stringify/-/fast-json-stable-stringify-2.0.0.tgz";
        sha1 = "d5142c0caee6b1189f87d3a76111064f86c8bbf2";
      };
    }
    {
      name = "fast-levenshtein-2.0.6.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/fast-levenshtein/-/fast-levenshtein-2.0.6.tgz";
        sha1 = "3d8a5c66883a16a30ca8643e851f19baa7797917";
      };
    }
    {
      name = "fast-redact-1.5.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/fast-redact/-/fast-redact-1.5.0.tgz";
        sha1 = "302892f566750c4f5eec7b830bfc9bc473484034";
      };
    }
    {
      name = "fast-safe-stringify-2.0.6.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/fast-safe-stringify/-/fast-safe-stringify-2.0.6.tgz";
        sha1 = "04b26106cc56681f51a044cfc0d76cf0008ac2c2";
      };
    }
    {
      name = "fb-watchman-2.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/fb-watchman/-/fb-watchman-2.0.0.tgz";
        sha1 = "54e9abf7dfa2f26cd9b1636c588c1afc05de5d58";
      };
    }
    {
      name = "fd-slicer-1.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/fd-slicer/-/fd-slicer-1.1.0.tgz";
        sha1 = "25c7c89cb1f9077f8891bbe61d8f390eae256f1e";
      };
    }
    {
      name = "figgy-pudding-3.5.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/figgy-pudding/-/figgy-pudding-3.5.1.tgz";
        sha1 = "862470112901c727a0e495a80744bd5baa1d6790";
      };
    }
    {
      name = "figures-1.7.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/figures/-/figures-1.7.0.tgz";
        sha1 = "cbe1e3affcf1cd44b80cadfed28dc793a9701d2e";
      };
    }
    {
      name = "figures-2.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/figures/-/figures-2.0.0.tgz";
        sha1 = "3ab1a2d2a62c8bfb431a0c94cb797a2fce27c962";
      };
    }
    {
      name = "file-entry-cache-2.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/file-entry-cache/-/file-entry-cache-2.0.0.tgz";
        sha1 = "c392990c3e684783d838b8c84a45d8a048458361";
      };
    }
    {
      name = "file-entry-cache-5.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/file-entry-cache/-/file-entry-cache-5.0.1.tgz";
        sha1 = "ca0f6efa6dd3d561333fb14515065c2fafdf439c";
      };
    }
    {
      name = "file-uri-to-path-1.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/file-uri-to-path/-/file-uri-to-path-1.0.0.tgz";
        sha1 = "553a7b8446ff6f684359c445f1e37a05dacc33dd";
      };
    }
    {
      name = "fill-range-4.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/fill-range/-/fill-range-4.0.0.tgz";
        sha1 = "d544811d428f98eb06a63dc402d2403c328c38f7";
      };
    }
    {
      name = "find-cache-dir-2.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/find-cache-dir/-/find-cache-dir-2.1.0.tgz";
        sha1 = "8d0f94cd13fe43c6c7c261a0d86115ca918c05f7";
      };
    }
    {
      name = "find-replace-3.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/find-replace/-/find-replace-3.0.0.tgz";
        sha1 = "3e7e23d3b05167a76f770c9fbd5258b0def68c38";
      };
    }
    {
      name = "find-up-3.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/find-up/-/find-up-3.0.0.tgz";
        sha1 = "49169f1d7993430646da61ecc5ae355c21c97b73";
      };
    }
    {
      name = "findup-sync-3.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/findup-sync/-/findup-sync-3.0.0.tgz";
        sha1 = "17b108f9ee512dfb7a5c7f3c8b27ea9e1a9c08d1";
      };
    }
    {
      name = "firefox-profile-1.2.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/firefox-profile/-/firefox-profile-1.2.0.tgz";
        sha1 = "2068227924e714a2b10ec5fba8392e19b5788509";
      };
    }
    {
      name = "first-chunk-stream-3.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/first-chunk-stream/-/first-chunk-stream-3.0.0.tgz";
        sha1 = "06972a66263505ed82b2c4db93c1b5e078a6576a";
      };
    }
    {
      name = "flat-cache-1.3.4.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/flat-cache/-/flat-cache-1.3.4.tgz";
        sha1 = "2c2ef77525cc2929007dfffa1dd314aa9c9dee6f";
      };
    }
    {
      name = "flat-cache-2.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/flat-cache/-/flat-cache-2.0.1.tgz";
        sha1 = "5d296d6f04bda44a4630a301413bdbc2ec085ec0";
      };
    }
    {
      name = "flatstr-1.0.9.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/flatstr/-/flatstr-1.0.9.tgz";
        sha1 = "0950d56fec02de1030c1311847ecd58c25690eb9";
      };
    }
    {
      name = "flatted-2.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/flatted/-/flatted-2.0.1.tgz";
        sha1 = "69e57caa8f0eacbc281d2e2cb458d46fdb449e08";
      };
    }
    {
      name = "fluent-syntax-0.13.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/fluent-syntax/-/fluent-syntax-0.13.0.tgz";
        sha1 = "417144d99cba94ff474c422b3e6623d5a842855a";
      };
    }
    {
      name = "flush-write-stream-1.1.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/flush-write-stream/-/flush-write-stream-1.1.1.tgz";
        sha1 = "8dd7d873a1babc207d94ead0c2e0e44276ebf2e8";
      };
    }
    {
      name = "flyd-0.2.8.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/flyd/-/flyd-0.2.8.tgz";
        sha1 = "26b606a051431ec275dd7ca2cb5fb61756fcd7f1";
      };
    }
    {
      name = "for-in-0.1.8.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/for-in/-/for-in-0.1.8.tgz";
        sha1 = "d8773908e31256109952b1fdb9b3fa867d2775e1";
      };
    }
    {
      name = "for-in-1.0.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/for-in/-/for-in-1.0.2.tgz";
        sha1 = "81068d295a8142ec0ac726c6e2200c30fb6d5e80";
      };
    }
    {
      name = "for-own-1.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/for-own/-/for-own-1.0.0.tgz";
        sha1 = "c63332f415cedc4b04dbfe70cf836494c53cb44b";
      };
    }
    {
      name = "forever-agent-0.6.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/forever-agent/-/forever-agent-0.6.1.tgz";
        sha1 = "fbc71f0c41adeb37f96c577ad1ed42d8fdacca91";
      };
    }
    {
      name = "form-data-2.3.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/form-data/-/form-data-2.3.3.tgz";
        sha1 = "dcce52c05f644f298c6a7ab936bd724ceffbf3a6";
      };
    }
    {
      name = "fragment-cache-0.2.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/fragment-cache/-/fragment-cache-0.2.1.tgz";
        sha1 = "4290fad27f13e89be7f33799c6bc5a0abfff0d19";
      };
    }
    {
      name = "from2-2.3.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/from2/-/from2-2.3.0.tgz";
        sha1 = "8bfb5502bde4a4d36cfdeea007fcca21d7e382af";
      };
    }
    {
      name = "fs-constants-1.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/fs-constants/-/fs-constants-1.0.0.tgz";
        sha1 = "6be0de9be998ce16af8afc24497b9ee9b7ccd9ad";
      };
    }
    {
      name = "fs-extra-4.0.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/fs-extra/-/fs-extra-4.0.3.tgz";
        sha1 = "0d852122e5bc5beb453fb028e9c0c9bf36340c94";
      };
    }
    {
      name = "fs-minipass-1.2.5.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/fs-minipass/-/fs-minipass-1.2.5.tgz";
        sha1 = "06c277218454ec288df77ada54a03b8702aacb9d";
      };
    }
    {
      name = "fs-write-stream-atomic-1.0.10.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/fs-write-stream-atomic/-/fs-write-stream-atomic-1.0.10.tgz";
        sha1 = "b47df53493ef911df75731e70a9ded0189db40c9";
      };
    }
    {
      name = "fs.realpath-1.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/fs.realpath/-/fs.realpath-1.0.0.tgz";
        sha1 = "1504ad2523158caa40db4a2787cb01411994ea4f";
      };
    }
    {
      name = "fs-0.0.1-security.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/fs/-/fs-0.0.1-security.tgz";
        sha1 = "8a7bd37186b6dddf3813f23858b57ecaaf5e41d4";
      };
    }
    {
      name = "fsevents-2.0.7.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/fsevents/-/fsevents-2.0.7.tgz";
        sha1 = "382c9b443c6cbac4c57187cdda23aa3bf1ccfc2a";
      };
    }
    {
      name = "fsevents-1.2.7.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/fsevents/-/fsevents-1.2.7.tgz";
        sha1 = "4851b664a3783e52003b3c66eb0eee1074933aa4";
      };
    }
    {
      name = "ftp-0.3.10.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/ftp/-/ftp-0.3.10.tgz";
        sha1 = "9197d861ad8142f3e63d5a83bfe4c59f7330885d";
      };
    }
    {
      name = "function-bind-1.1.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/function-bind/-/function-bind-1.1.1.tgz";
        sha1 = "a56899d3ea3c9bab874bb9773b7c5ede92f4895d";
      };
    }
    {
      name = "functional-red-black-tree-1.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/functional-red-black-tree/-/functional-red-black-tree-1.0.1.tgz";
        sha1 = "1b0ab3bd553b2a0d6399d29c0e3ea0b252078327";
      };
    }
    {
      name = "fuse.js-3.4.5.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/fuse.js/-/fuse.js-3.4.5.tgz";
        sha1 = "8954fb43f9729bd5dbcb8c08f251db552595a7a6";
      };
    }
    {
      name = "fx-runner-1.0.11.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/fx-runner/-/fx-runner-1.0.11.tgz";
        sha1 = "528d2d0c3dc8bb05570b506728c4f62e0b0ef095";
      };
    }
    {
      name = "gauge-2.7.4.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/gauge/-/gauge-2.7.4.tgz";
        sha1 = "2c03405c7538c39d7eb37b317022e325fb018bf7";
      };
    }
    {
      name = "geckodriver-1.16.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/geckodriver/-/geckodriver-1.16.2.tgz";
        sha1 = "4766e6eb6835e9ec8797f1dce1966df2b3fb5985";
      };
    }
    {
      name = "generate-function-2.3.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/generate-function/-/generate-function-2.3.1.tgz";
        sha1 = "f069617690c10c868e73b8465746764f97c3479f";
      };
    }
    {
      name = "generate-object-property-1.2.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/generate-object-property/-/generate-object-property-1.2.0.tgz";
        sha1 = "9c0e1c40308ce804f4783618b937fa88f99d50d0";
      };
    }
    {
      name = "get-caller-file-1.0.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/get-caller-file/-/get-caller-file-1.0.3.tgz";
        sha1 = "f978fa4c90d1dfe7ff2d6beda2a515e713bdcf4a";
      };
    }
    {
      name = "get-caller-file-2.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/get-caller-file/-/get-caller-file-2.0.1.tgz";
        sha1 = "25835260d3a2b9665fcdbb08cb039a7bbf7011c0";
      };
    }
    {
      name = "get-stream-3.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/get-stream/-/get-stream-3.0.0.tgz";
        sha1 = "8e943d1358dc37555054ecbe2edb05aa174ede14";
      };
    }
    {
      name = "get-stream-4.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/get-stream/-/get-stream-4.1.0.tgz";
        sha1 = "c1b255575f3dc21d59bfc79cd3d2b46b1c3a54b5";
      };
    }
    {
      name = "get-stream-5.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/get-stream/-/get-stream-5.1.0.tgz";
        sha1 = "01203cdc92597f9b909067c3e656cc1f4d3c4dc9";
      };
    }
    {
      name = "get-uri-2.0.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/get-uri/-/get-uri-2.0.3.tgz";
        sha1 = "fa13352269781d75162c6fc813c9e905323fbab5";
      };
    }
    {
      name = "get-value-2.0.6.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/get-value/-/get-value-2.0.6.tgz";
        sha1 = "dc15ca1c672387ca76bd37ac0a395ba2042a2c28";
      };
    }
    {
      name = "getpass-0.1.7.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/getpass/-/getpass-0.1.7.tgz";
        sha1 = "5eff8e3e684d569ae4cb2b1282604e8ba62149fa";
      };
    }
    {
      name = "gettext-parser-1.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/gettext-parser/-/gettext-parser-1.1.0.tgz";
        sha1 = "2c5a6638d893934b9b55037d0ad82cb7004b2679";
      };
    }
    {
      name = "git-rev-sync-1.12.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/git-rev-sync/-/git-rev-sync-1.12.0.tgz";
        sha1 = "4468406c7e6c3ba4cf4587999e1adb28d9d1af55";
      };
    }
    {
      name = "git-up-4.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/git-up/-/git-up-4.0.1.tgz";
        sha1 = "cb2ef086653640e721d2042fe3104857d89007c0";
      };
    }
    {
      name = "git-url-parse-11.1.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/git-url-parse/-/git-url-parse-11.1.2.tgz";
        sha1 = "aff1a897c36cc93699270587bea3dbcbbb95de67";
      };
    }
    {
      name = "glob-parent-3.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/glob-parent/-/glob-parent-3.1.0.tgz";
        sha1 = "9e6af6299d8d3bd2bd40430832bd113df906c5ae";
      };
    }
    {
      name = "glob-7.1.4.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/glob/-/glob-7.1.4.tgz";
        sha1 = "aa608a2f6c577ad357e1ae5a5c26d9a8d1969255";
      };
    }
    {
      name = "glob-6.0.4.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/glob/-/glob-6.0.4.tgz";
        sha1 = "0f08860f6a155127b2fadd4f9ce24b1aab6e4d22";
      };
    }
    {
      name = "glob-7.1.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/glob/-/glob-7.1.3.tgz";
        sha1 = "3960832d3f1574108342dafd3a67b332c0969df1";
      };
    }
    {
      name = "global-dirs-0.1.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/global-dirs/-/global-dirs-0.1.1.tgz";
        sha1 = "b319c0dd4607f353f3be9cca4c72fc148c49f445";
      };
    }
    {
      name = "global-modules-2.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/global-modules/-/global-modules-2.0.0.tgz";
        sha1 = "997605ad2345f27f51539bea26574421215c7780";
      };
    }
    {
      name = "global-modules-1.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/global-modules/-/global-modules-1.0.0.tgz";
        sha1 = "6d770f0eb523ac78164d72b5e71a8877265cc3ea";
      };
    }
    {
      name = "global-prefix-1.0.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/global-prefix/-/global-prefix-1.0.2.tgz";
        sha1 = "dbf743c6c14992593c655568cb66ed32c0122ebe";
      };
    }
    {
      name = "global-prefix-3.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/global-prefix/-/global-prefix-3.0.0.tgz";
        sha1 = "fc85f73064df69f50421f47f883fe5b913ba9b97";
      };
    }
    {
      name = "globals-11.11.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/globals/-/globals-11.11.0.tgz";
        sha1 = "dcf93757fa2de5486fbeed7118538adf789e9c2e";
      };
    }
    {
      name = "globals-9.18.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/globals/-/globals-9.18.0.tgz";
        sha1 = "aa3896b3e69b487f17e31ed2143d69a8e30c2d8a";
      };
    }
    {
      name = "globby-7.1.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/globby/-/globby-7.1.1.tgz";
        sha1 = "fb2ccff9401f8600945dfada97440cca972b8680";
      };
    }
    {
      name = "got-5.6.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/got/-/got-5.6.0.tgz";
        sha1 = "bb1d7ee163b78082bbc8eb836f3f395004ea6fbf";
      };
    }
    {
      name = "got-6.7.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/got/-/got-6.7.1.tgz";
        sha1 = "240cd05785a9a18e561dc1b44b41c763ef1e8db0";
      };
    }
    {
      name = "got-9.6.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/got/-/got-9.6.0.tgz";
        sha1 = "edf45e7d67f99545705de1f7bbeeeb121765ed85";
      };
    }
    {
      name = "graceful-fs-4.1.11.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/graceful-fs/-/graceful-fs-4.1.11.tgz";
        sha1 = "0e8bdfe4d1ddb8854d64e04ea7c00e2a026e5658";
      };
    }
    {
      name = "graceful-fs-4.1.15.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/graceful-fs/-/graceful-fs-4.1.15.tgz";
        sha1 = "ffb703e1066e8a0eeaa4c8b80ba9253eeefbfb00";
      };
    }
    {
      name = "graceful-readlink-1.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/graceful-readlink/-/graceful-readlink-1.0.1.tgz";
        sha1 = "4cafad76bc62f02fa039b2f94e9a3dd3a391a725";
      };
    }
    {
      name = "graphlib-2.1.7.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/graphlib/-/graphlib-2.1.7.tgz";
        sha1 = "b6a69f9f44bd9de3963ce6804a2fc9e73d86aecc";
      };
    }
    {
      name = "growly-1.3.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/growly/-/growly-1.3.0.tgz";
        sha1 = "f10748cbe76af964b7c96c93c6bcc28af120c081";
      };
    }
    {
      name = "handlebars-4.1.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/handlebars/-/handlebars-4.1.2.tgz";
        sha1 = "b6b37c1ced0306b221e094fc7aca3ec23b131b67";
      };
    }
    {
      name = "har-schema-2.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/har-schema/-/har-schema-2.0.0.tgz";
        sha1 = "a94c2224ebcac04782a0d9035521f24735b7ec92";
      };
    }
    {
      name = "har-validator-5.0.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/har-validator/-/har-validator-5.0.3.tgz";
        sha1 = "ba402c266194f15956ef15e0fcf242993f6a7dfd";
      };
    }
    {
      name = "har-validator-5.1.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/har-validator/-/har-validator-5.1.3.tgz";
        sha1 = "1ef89ebd3e4996557675eed9893110dc350fa080";
      };
    }
    {
      name = "has-ansi-2.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/has-ansi/-/has-ansi-2.0.0.tgz";
        sha1 = "34f5049ce1ecdf2b0649af3ef24e45ed35416d91";
      };
    }
    {
      name = "has-color-0.1.7.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/has-color/-/has-color-0.1.7.tgz";
        sha1 = "67144a5260c34fc3cca677d041daf52fe7b78b2f";
      };
    }
    {
      name = "has-flag-3.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/has-flag/-/has-flag-3.0.0.tgz";
        sha1 = "b5d454dc2199ae225699f3467e5a07f3b955bafd";
      };
    }
    {
      name = "has-symbols-1.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/has-symbols/-/has-symbols-1.0.0.tgz";
        sha1 = "ba1a8f1af2a0fc39650f5c850367704122063b44";
      };
    }
    {
      name = "has-unicode-2.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/has-unicode/-/has-unicode-2.0.1.tgz";
        sha1 = "e0e6fe6a28cf51138855e086d1691e771de2a8b9";
      };
    }
    {
      name = "has-value-0.3.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/has-value/-/has-value-0.3.1.tgz";
        sha1 = "7b1f58bada62ca827ec0a2078025654845995e1f";
      };
    }
    {
      name = "has-value-1.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/has-value/-/has-value-1.0.0.tgz";
        sha1 = "18b281da585b1c5c51def24c930ed29a0be6b177";
      };
    }
    {
      name = "has-values-0.1.4.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/has-values/-/has-values-0.1.4.tgz";
        sha1 = "6d61de95d91dfca9b9a02089ad384bff8f62b771";
      };
    }
    {
      name = "has-values-1.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/has-values/-/has-values-1.0.0.tgz";
        sha1 = "95b0b63fec2146619a6fe57fe75628d5a39efe4f";
      };
    }
    {
      name = "has-yarn-2.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/has-yarn/-/has-yarn-2.1.0.tgz";
        sha1 = "137e11354a7b5bf11aa5cb649cf0c6f3ff2b2e77";
      };
    }
    {
      name = "has-1.0.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/has/-/has-1.0.3.tgz";
        sha1 = "722d7cbfc1f6aa8241f16dd814e011e1f41e8796";
      };
    }
    {
      name = "hash-base-3.0.4.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/hash-base/-/hash-base-3.0.4.tgz";
        sha1 = "5fc8686847ecd73499403319a6b0a3f3f6ae4918";
      };
    }
    {
      name = "hash.js-1.1.7.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/hash.js/-/hash.js-1.1.7.tgz";
        sha1 = "0babca538e8d4ee4a0f8988d68866537a003cf42";
      };
    }
    {
      name = "hmac-drbg-1.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/hmac-drbg/-/hmac-drbg-1.0.1.tgz";
        sha1 = "d2745701025a6c775a6c545793ed502fc0c649a1";
      };
    }
    {
      name = "homedir-polyfill-1.0.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/homedir-polyfill/-/homedir-polyfill-1.0.3.tgz";
        sha1 = "743298cef4e5af3e194161fbadcc2151d3a058e8";
      };
    }
    {
      name = "hosted-git-info-2.7.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/hosted-git-info/-/hosted-git-info-2.7.1.tgz";
        sha1 = "97f236977bd6e125408930ff6de3eec6281ec047";
      };
    }
    {
      name = "html-encoding-sniffer-1.0.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/html-encoding-sniffer/-/html-encoding-sniffer-1.0.2.tgz";
        sha1 = "e70d84b94da53aa375e11fe3a351be6642ca46f8";
      };
    }
    {
      name = "htmlparser2-3.10.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/htmlparser2/-/htmlparser2-3.10.1.tgz";
        sha1 = "bd679dc3f59897b6a34bb10749c855bb53a9392f";
      };
    }
    {
      name = "http-cache-semantics-4.0.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/http-cache-semantics/-/http-cache-semantics-4.0.3.tgz";
        sha1 = "495704773277eeef6e43f9ab2c2c7d259dda25c5";
      };
    }
    {
      name = "http-errors-1.7.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/http-errors/-/http-errors-1.7.3.tgz";
        sha1 = "6c619e4f9c60308c38519498c14fbb10aacebb06";
      };
    }
    {
      name = "http-proxy-agent-2.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/http-proxy-agent/-/http-proxy-agent-2.1.0.tgz";
        sha1 = "e4821beef5b2142a2026bd73926fe537631c5405";
      };
    }
    {
      name = "http-signature-1.2.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/http-signature/-/http-signature-1.2.0.tgz";
        sha1 = "9aecd925114772f3d95b65a60abb8f7c18fbace1";
      };
    }
    {
      name = "https-browserify-1.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/https-browserify/-/https-browserify-1.0.0.tgz";
        sha1 = "ec06c10e0a34c0f2faf199f7fd7fc78fffd03c73";
      };
    }
    {
      name = "https-proxy-agent-2.2.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/https-proxy-agent/-/https-proxy-agent-2.2.1.tgz";
        sha1 = "51552970fa04d723e04c56d04178c3f92592bbc0";
      };
    }
    {
      name = "iconv-lite-0.4.24.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/iconv-lite/-/iconv-lite-0.4.24.tgz";
        sha1 = "2022b4b25fbddc21d2f524974a474aafe733908b";
      };
    }
    {
      name = "ieee754-1.1.12.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/ieee754/-/ieee754-1.1.12.tgz";
        sha1 = "50bf24e5b9c8bb98af4964c941cdb0918da7b60b";
      };
    }
    {
      name = "iferr-0.1.5.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/iferr/-/iferr-0.1.5.tgz";
        sha1 = "c60eed69e6d8fdb6b3104a1fcbca1c192dc5b501";
      };
    }
    {
      name = "ignore-walk-3.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/ignore-walk/-/ignore-walk-3.0.1.tgz";
        sha1 = "a83e62e7d272ac0e3b551aaa82831a19b69f82f8";
      };
    }
    {
      name = "ignore-3.3.10.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/ignore/-/ignore-3.3.10.tgz";
        sha1 = "0a97fb876986e8081c631160f8f9f389157f0043";
      };
    }
    {
      name = "ignore-4.0.6.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/ignore/-/ignore-4.0.6.tgz";
        sha1 = "750e3db5862087b4737ebac8207ffd1ef27b25fc";
      };
    }
    {
      name = "immediate-3.0.6.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/immediate/-/immediate-3.0.6.tgz";
        sha1 = "9db1dbd0faf8de6fbe0f5dd5e56bb606280de69b";
      };
    }
    {
      name = "immer-3.1.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/immer/-/immer-3.1.3.tgz";
        sha1 = "59bc742b2aab6e2c676445edb653e588a23c70fc";
      };
    }
    {
      name = "immutable-3.8.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/immutable/-/immutable-3.8.2.tgz";
        sha1 = "c2439951455bb39913daf281376f1530e104adf3";
      };
    }
    {
      name = "import-fresh-3.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/import-fresh/-/import-fresh-3.0.0.tgz";
        sha1 = "a3d897f420cab0e671236897f75bc14b4885c390";
      };
    }
    {
      name = "import-lazy-2.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/import-lazy/-/import-lazy-2.1.0.tgz";
        sha1 = "05698e3d45c88e8d7e9d92cb0584e77f096f3e43";
      };
    }
    {
      name = "import-local-2.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/import-local/-/import-local-2.0.0.tgz";
        sha1 = "55070be38a5993cf18ef6db7e961f5bee5c5a09d";
      };
    }
    {
      name = "imurmurhash-0.1.4.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/imurmurhash/-/imurmurhash-0.1.4.tgz";
        sha1 = "9218b9b2b928a238b13dc4fb6b6d576f231453ea";
      };
    }
    {
      name = "indexof-0.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/indexof/-/indexof-0.0.1.tgz";
        sha1 = "82dc336d232b9062179d05ab3293a66059fd435d";
      };
    }
    {
      name = "inflight-1.0.6.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/inflight/-/inflight-1.0.6.tgz";
        sha1 = "49bd6331d7d02d0c09bc910a1075ba8165b56df9";
      };
    }
    {
      name = "inherits-2.0.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/inherits/-/inherits-2.0.3.tgz";
        sha1 = "633c2c83e3da42a502f52466022480f4208261de";
      };
    }
    {
      name = "inherits-2.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/inherits/-/inherits-2.0.1.tgz";
        sha1 = "b17d08d326b4423e568eff719f91b0b1cbdf69f1";
      };
    }
    {
      name = "inherits-2.0.4.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/inherits/-/inherits-2.0.4.tgz";
        sha1 = "0fa2c64f932917c3433a0ded55363aae37416b7c";
      };
    }
    {
      name = "ini-1.3.5.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/ini/-/ini-1.3.5.tgz";
        sha1 = "eee25f56db1c9ec6085e0c22778083f596abf927";
      };
    }
    {
      name = "inquirer-0.12.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/inquirer/-/inquirer-0.12.0.tgz";
        sha1 = "1ef2bfd63504df0bc75785fff8c2c41df12f077e";
      };
    }
    {
      name = "inquirer-6.4.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/inquirer/-/inquirer-6.4.1.tgz";
        sha1 = "7bd9e5ab0567cd23b41b0180b68e0cfa82fc3c0b";
      };
    }
    {
      name = "interpret-1.2.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/interpret/-/interpret-1.2.0.tgz";
        sha1 = "d5061a6224be58e8083985f5014d844359576296";
      };
    }
    {
      name = "invariant-2.2.4.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/invariant/-/invariant-2.2.4.tgz";
        sha1 = "610f3c92c9359ce1db616e538008d23ff35158e6";
      };
    }
    {
      name = "invert-kv-1.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/invert-kv/-/invert-kv-1.0.0.tgz";
        sha1 = "104a8e4aaca6d3d8cd157a8ef8bfab2d7a3ffdb6";
      };
    }
    {
      name = "invert-kv-2.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/invert-kv/-/invert-kv-2.0.0.tgz";
        sha1 = "7393f5afa59ec9ff5f67a27620d11c226e3eec02";
      };
    }
    {
      name = "ip-1.1.5.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/ip/-/ip-1.1.5.tgz";
        sha1 = "bdded70114290828c0a039e72ef25f5aaec4354a";
      };
    }
    {
      name = "is-absolute-0.1.7.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/is-absolute/-/is-absolute-0.1.7.tgz";
        sha1 = "847491119fccb5fb436217cc737f7faad50f603f";
      };
    }
    {
      name = "is-accessor-descriptor-0.1.6.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/is-accessor-descriptor/-/is-accessor-descriptor-0.1.6.tgz";
        sha1 = "a9e12cb3ae8d876727eeef3843f8a0897b5c98d6";
      };
    }
    {
      name = "is-accessor-descriptor-1.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/is-accessor-descriptor/-/is-accessor-descriptor-1.0.0.tgz";
        sha1 = "169c2f6d3df1f992618072365c9b0ea1f6878656";
      };
    }
    {
      name = "is-arrayish-0.2.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/is-arrayish/-/is-arrayish-0.2.1.tgz";
        sha1 = "77c99840527aa8ecb1a8ba697b80645a7a926a9d";
      };
    }
    {
      name = "is-binary-path-1.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/is-binary-path/-/is-binary-path-1.0.1.tgz";
        sha1 = "75f16642b480f187a711c814161fd3a4a7655898";
      };
    }
    {
      name = "is-buffer-1.1.6.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/is-buffer/-/is-buffer-1.1.6.tgz";
        sha1 = "efaa2ea9daa0d7ab2ea13a97b2b8ad51fefbe8be";
      };
    }
    {
      name = "is-buffer-1.1.5.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/is-buffer/-/is-buffer-1.1.5.tgz";
        sha1 = "1f3b26ef613b214b88cbca23cc6c01d87961eecc";
      };
    }
    {
      name = "is-callable-1.1.4.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/is-callable/-/is-callable-1.1.4.tgz";
        sha1 = "1e1adf219e1eeb684d691f9d6a05ff0d30a24d75";
      };
    }
    {
      name = "is-ci-1.2.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/is-ci/-/is-ci-1.2.1.tgz";
        sha1 = "e3779c8ee17fccf428488f6e281187f2e632841c";
      };
    }
    {
      name = "is-ci-2.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/is-ci/-/is-ci-2.0.0.tgz";
        sha1 = "6bc6334181810e04b5c22b3d589fdca55026404c";
      };
    }
    {
      name = "is-data-descriptor-0.1.4.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/is-data-descriptor/-/is-data-descriptor-0.1.4.tgz";
        sha1 = "0b5ee648388e2c860282e793f1856fec3f301b56";
      };
    }
    {
      name = "is-data-descriptor-1.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/is-data-descriptor/-/is-data-descriptor-1.0.0.tgz";
        sha1 = "d84876321d0e7add03990406abbbbd36ba9268c7";
      };
    }
    {
      name = "is-date-object-1.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/is-date-object/-/is-date-object-1.0.1.tgz";
        sha1 = "9aa20eb6aeebbff77fbd33e74ca01b33581d3a16";
      };
    }
    {
      name = "is-descriptor-0.1.6.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/is-descriptor/-/is-descriptor-0.1.6.tgz";
        sha1 = "366d8240dde487ca51823b1ab9f07a10a78251ca";
      };
    }
    {
      name = "is-descriptor-1.0.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/is-descriptor/-/is-descriptor-1.0.2.tgz";
        sha1 = "3b159746a66604b04f8c81524ba365c5f14d86ec";
      };
    }
    {
      name = "is-extendable-0.1.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/is-extendable/-/is-extendable-0.1.1.tgz";
        sha1 = "62b110e289a471418e3ec36a617d472e301dfc89";
      };
    }
    {
      name = "is-extendable-1.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/is-extendable/-/is-extendable-1.0.1.tgz";
        sha1 = "a7470f9e426733d81bd81e1155264e3a3507cab4";
      };
    }
    {
      name = "is-extglob-2.1.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/is-extglob/-/is-extglob-2.1.1.tgz";
        sha1 = "a88c02535791f02ed37c76a1b9ea9773c833f8c2";
      };
    }
    {
      name = "is-fullwidth-code-point-1.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/is-fullwidth-code-point/-/is-fullwidth-code-point-1.0.0.tgz";
        sha1 = "ef9e31386f031a7f0d643af82fde50c457ef00cb";
      };
    }
    {
      name = "is-fullwidth-code-point-2.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/is-fullwidth-code-point/-/is-fullwidth-code-point-2.0.0.tgz";
        sha1 = "a3b30a5c4f199183167aaab93beefae3ddfb654f";
      };
    }
    {
      name = "is-generator-fn-2.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/is-generator-fn/-/is-generator-fn-2.1.0.tgz";
        sha1 = "7d140adc389aaf3011a8f2a2a4cfa6faadffb118";
      };
    }
    {
      name = "is-glob-3.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/is-glob/-/is-glob-3.1.0.tgz";
        sha1 = "7ba5ae24217804ac70707b96922567486cc3e84a";
      };
    }
    {
      name = "is-glob-4.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/is-glob/-/is-glob-4.0.0.tgz";
        sha1 = "9521c76845cc2610a85203ddf080a958c2ffabc0";
      };
    }
    {
      name = "is-glob-4.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/is-glob/-/is-glob-4.0.1.tgz";
        sha1 = "7567dbe9f2f5e2467bc77ab83c4a29482407a5dc";
      };
    }
    {
      name = "is-installed-globally-0.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/is-installed-globally/-/is-installed-globally-0.1.0.tgz";
        sha1 = "0dfd98f5a9111716dd535dda6492f67bf3d25a80";
      };
    }
    {
      name = "is-mergeable-object-1.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/is-mergeable-object/-/is-mergeable-object-1.1.0.tgz";
        sha1 = "a846e8cf0e2bad6a8cf8b243b63b4c43b9907990";
      };
    }
    {
      name = "is-my-ip-valid-1.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/is-my-ip-valid/-/is-my-ip-valid-1.0.0.tgz";
        sha1 = "7b351b8e8edd4d3995d4d066680e664d94696824";
      };
    }
    {
      name = "is-my-json-valid-2.19.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/is-my-json-valid/-/is-my-json-valid-2.19.0.tgz";
        sha1 = "8fd6e40363cd06b963fa877d444bfb5eddc62175";
      };
    }
    {
      name = "is-npm-1.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/is-npm/-/is-npm-1.0.0.tgz";
        sha1 = "f2fb63a65e4905b406c86072765a1a4dc793b9f4";
      };
    }
    {
      name = "is-npm-3.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/is-npm/-/is-npm-3.0.0.tgz";
        sha1 = "ec9147bfb629c43f494cf67936a961edec7e8053";
      };
    }
    {
      name = "is-number-3.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/is-number/-/is-number-3.0.0.tgz";
        sha1 = "24fd6201a4782cf50561c810276afc7d12d71195";
      };
    }
    {
      name = "is-number-4.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/is-number/-/is-number-4.0.0.tgz";
        sha1 = "0026e37f5454d73e356dfe6564699867c6a7f0ff";
      };
    }
    {
      name = "is-obj-1.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/is-obj/-/is-obj-1.0.1.tgz";
        sha1 = "3e4729ac1f5fde025cd7d83a896dab9f4f67db0f";
      };
    }
    {
      name = "is-odd-2.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/is-odd/-/is-odd-2.0.0.tgz";
        sha1 = "7646624671fd7ea558ccd9a2795182f2958f1b24";
      };
    }
    {
      name = "is-path-inside-1.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/is-path-inside/-/is-path-inside-1.0.1.tgz";
        sha1 = "8ef5b7de50437a3fdca6b4e865ef7aa55cb48036";
      };
    }
    {
      name = "is-plain-obj-1.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/is-plain-obj/-/is-plain-obj-1.1.0.tgz";
        sha1 = "71a50c8429dfca773c92a390a4a03b39fcd51d3e";
      };
    }
    {
      name = "is-plain-object-2.0.4.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/is-plain-object/-/is-plain-object-2.0.4.tgz";
        sha1 = "2c163b3fafb1b606d9d17928f05c2a1c38e07677";
      };
    }
    {
      name = "is-promise-2.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/is-promise/-/is-promise-2.1.0.tgz";
        sha1 = "79a2a9ece7f096e80f36d2b2f3bc16c1ff4bf3fa";
      };
    }
    {
      name = "is-property-1.0.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/is-property/-/is-property-1.0.2.tgz";
        sha1 = "57fe1c4e48474edd65b09911f26b1cd4095dda84";
      };
    }
    {
      name = "is-redirect-1.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/is-redirect/-/is-redirect-1.0.0.tgz";
        sha1 = "1d03dded53bd8db0f30c26e4f95d36fc7c87dc24";
      };
    }
    {
      name = "is-regex-1.0.4.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/is-regex/-/is-regex-1.0.4.tgz";
        sha1 = "5517489b547091b0930e095654ced25ee97e9491";
      };
    }
    {
      name = "is-relative-0.1.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/is-relative/-/is-relative-0.1.3.tgz";
        sha1 = "905fee8ae86f45b3ec614bc3c15c869df0876e82";
      };
    }
    {
      name = "is-resolvable-1.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/is-resolvable/-/is-resolvable-1.1.0.tgz";
        sha1 = "fb18f87ce1feb925169c9a407c19318a3206ed88";
      };
    }
    {
      name = "is-retry-allowed-1.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/is-retry-allowed/-/is-retry-allowed-1.1.0.tgz";
        sha1 = "11a060568b67339444033d0125a61a20d564fb34";
      };
    }
    {
      name = "is-ssh-1.3.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/is-ssh/-/is-ssh-1.3.1.tgz";
        sha1 = "f349a8cadd24e65298037a522cf7520f2e81a0f3";
      };
    }
    {
      name = "is-stream-1.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/is-stream/-/is-stream-1.1.0.tgz";
        sha1 = "12d4a3dd4e68e0b79ceb8dbc84173ae80d91ca44";
      };
    }
    {
      name = "is-symbol-1.0.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/is-symbol/-/is-symbol-1.0.2.tgz";
        sha1 = "a055f6ae57192caee329e7a860118b497a950f38";
      };
    }
    {
      name = "is-typedarray-1.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/is-typedarray/-/is-typedarray-1.0.0.tgz";
        sha1 = "e479c80858df0c1b11ddda6940f96011fcda4a9a";
      };
    }
    {
      name = "is-utf8-0.2.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/is-utf8/-/is-utf8-0.2.1.tgz";
        sha1 = "4b0da1442104d1b336340e80797e865cf39f7d72";
      };
    }
    {
      name = "is-windows-1.0.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/is-windows/-/is-windows-1.0.2.tgz";
        sha1 = "d1850eb9791ecd18e6182ce12a30f396634bb19d";
      };
    }
    {
      name = "is-wsl-1.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/is-wsl/-/is-wsl-1.1.0.tgz";
        sha1 = "1f16e4aa22b04d1336b66188a66af3c600c3a66d";
      };
    }
    {
      name = "is-yarn-global-0.3.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/is-yarn-global/-/is-yarn-global-0.3.0.tgz";
        sha1 = "d502d3382590ea3004893746754c89139973e232";
      };
    }
    {
      name = "isarray-0.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/isarray/-/isarray-0.0.1.tgz";
        sha1 = "8a18acfca9a8f4177e09abfc6038939b05d1eedf";
      };
    }
    {
      name = "isarray-1.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/isarray/-/isarray-1.0.0.tgz";
        sha1 = "bb935d48582cba168c06834957a54a3e07124f11";
      };
    }
    {
      name = "isexe-1.1.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/isexe/-/isexe-1.1.2.tgz";
        sha1 = "36f3e22e60750920f5e7241a476a8c6a42275ad0";
      };
    }
    {
      name = "isexe-2.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/isexe/-/isexe-2.0.0.tgz";
        sha1 = "e8fbf374dc556ff8947a10dcb0572d633f2cfa10";
      };
    }
    {
      name = "isobject-2.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/isobject/-/isobject-2.1.0.tgz";
        sha1 = "f065561096a3f1da2ef46272f815c840d87e0c89";
      };
    }
    {
      name = "isobject-3.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/isobject/-/isobject-3.0.1.tgz";
        sha1 = "4e431e92b11a9731636aa1f9c8d1ccbcfdab78df";
      };
    }
    {
      name = "isstream-0.1.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/isstream/-/isstream-0.1.2.tgz";
        sha1 = "47e63f7af55afa6f92e1500e690eb8b8529c099a";
      };
    }
    {
      name = "istanbul-lib-coverage-2.0.5.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/istanbul-lib-coverage/-/istanbul-lib-coverage-2.0.5.tgz";
        sha1 = "675f0ab69503fad4b1d849f736baaca803344f49";
      };
    }
    {
      name = "istanbul-lib-instrument-3.3.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/istanbul-lib-instrument/-/istanbul-lib-instrument-3.3.0.tgz";
        sha1 = "a5f63d91f0bbc0c3e479ef4c5de027335ec6d630";
      };
    }
    {
      name = "istanbul-lib-report-2.0.8.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/istanbul-lib-report/-/istanbul-lib-report-2.0.8.tgz";
        sha1 = "5a8113cd746d43c4889eba36ab10e7d50c9b4f33";
      };
    }
    {
      name = "istanbul-lib-source-maps-3.0.6.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/istanbul-lib-source-maps/-/istanbul-lib-source-maps-3.0.6.tgz";
        sha1 = "284997c48211752ec486253da97e3879defba8c8";
      };
    }
    {
      name = "istanbul-reports-2.2.4.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/istanbul-reports/-/istanbul-reports-2.2.4.tgz";
        sha1 = "4e0d0ddf0f0ad5b49a314069d31b4f06afe49ad3";
      };
    }
    {
      name = "jed-1.1.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/jed/-/jed-1.1.1.tgz";
        sha1 = "7a549bbd9ffe1585b0cd0a191e203055bee574b4";
      };
    }
    {
      name = "jest-changed-files-24.8.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/jest-changed-files/-/jest-changed-files-24.8.0.tgz";
        sha1 = "7e7eb21cf687587a85e50f3d249d1327e15b157b";
      };
    }
    {
      name = "jest-cli-24.8.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/jest-cli/-/jest-cli-24.8.0.tgz";
        sha1 = "b075ac914492ed114fa338ade7362a301693e989";
      };
    }
    {
      name = "jest-config-24.8.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/jest-config/-/jest-config-24.8.0.tgz";
        sha1 = "77db3d265a6f726294687cbbccc36f8a76ee0f4f";
      };
    }
    {
      name = "jest-diff-24.8.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/jest-diff/-/jest-diff-24.8.0.tgz";
        sha1 = "146435e7d1e3ffdf293d53ff97e193f1d1546172";
      };
    }
    {
      name = "jest-docblock-24.3.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/jest-docblock/-/jest-docblock-24.3.0.tgz";
        sha1 = "b9c32dac70f72e4464520d2ba4aec02ab14db5dd";
      };
    }
    {
      name = "jest-each-24.8.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/jest-each/-/jest-each-24.8.0.tgz";
        sha1 = "a05fd2bf94ddc0b1da66c6d13ec2457f35e52775";
      };
    }
    {
      name = "jest-environment-jsdom-24.8.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/jest-environment-jsdom/-/jest-environment-jsdom-24.8.0.tgz";
        sha1 = "300f6949a146cabe1c9357ad9e9ecf9f43f38857";
      };
    }
    {
      name = "jest-environment-node-24.8.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/jest-environment-node/-/jest-environment-node-24.8.0.tgz";
        sha1 = "d3f726ba8bc53087a60e7a84ca08883a4c892231";
      };
    }
    {
      name = "jest-get-type-24.8.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/jest-get-type/-/jest-get-type-24.8.0.tgz";
        sha1 = "a7440de30b651f5a70ea3ed7ff073a32dfe646fc";
      };
    }
    {
      name = "jest-haste-map-24.8.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/jest-haste-map/-/jest-haste-map-24.8.0.tgz";
        sha1 = "51794182d877b3ddfd6e6d23920e3fe72f305800";
      };
    }
    {
      name = "jest-jasmine2-24.8.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/jest-jasmine2/-/jest-jasmine2-24.8.0.tgz";
        sha1 = "a9c7e14c83dd77d8b15e820549ce8987cc8cd898";
      };
    }
    {
      name = "jest-leak-detector-24.8.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/jest-leak-detector/-/jest-leak-detector-24.8.0.tgz";
        sha1 = "c0086384e1f650c2d8348095df769f29b48e6980";
      };
    }
    {
      name = "jest-matcher-utils-24.8.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/jest-matcher-utils/-/jest-matcher-utils-24.8.0.tgz";
        sha1 = "2bce42204c9af12bde46f83dc839efe8be832495";
      };
    }
    {
      name = "jest-message-util-24.8.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/jest-message-util/-/jest-message-util-24.8.0.tgz";
        sha1 = "0d6891e72a4beacc0292b638685df42e28d6218b";
      };
    }
    {
      name = "jest-mock-24.8.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/jest-mock/-/jest-mock-24.8.0.tgz";
        sha1 = "2f9d14d37699e863f1febf4e4d5a33b7fdbbde56";
      };
    }
    {
      name = "jest-pnp-resolver-1.2.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/jest-pnp-resolver/-/jest-pnp-resolver-1.2.1.tgz";
        sha1 = "ecdae604c077a7fbc70defb6d517c3c1c898923a";
      };
    }
    {
      name = "jest-regex-util-24.3.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/jest-regex-util/-/jest-regex-util-24.3.0.tgz";
        sha1 = "d5a65f60be1ae3e310d5214a0307581995227b36";
      };
    }
    {
      name = "jest-resolve-dependencies-24.8.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/jest-resolve-dependencies/-/jest-resolve-dependencies-24.8.0.tgz";
        sha1 = "19eec3241f2045d3f990dba331d0d7526acff8e0";
      };
    }
    {
      name = "jest-resolve-24.8.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/jest-resolve/-/jest-resolve-24.8.0.tgz";
        sha1 = "84b8e5408c1f6a11539793e2b5feb1b6e722439f";
      };
    }
    {
      name = "jest-runner-24.8.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/jest-runner/-/jest-runner-24.8.0.tgz";
        sha1 = "4f9ae07b767db27b740d7deffad0cf67ccb4c5bb";
      };
    }
    {
      name = "jest-runtime-24.8.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/jest-runtime/-/jest-runtime-24.8.0.tgz";
        sha1 = "05f94d5b05c21f6dc54e427cd2e4980923350620";
      };
    }
    {
      name = "jest-serializer-24.4.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/jest-serializer/-/jest-serializer-24.4.0.tgz";
        sha1 = "f70c5918c8ea9235ccb1276d232e459080588db3";
      };
    }
    {
      name = "jest-snapshot-24.8.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/jest-snapshot/-/jest-snapshot-24.8.0.tgz";
        sha1 = "3bec6a59da2ff7bc7d097a853fb67f9d415cb7c6";
      };
    }
    {
      name = "jest-util-24.8.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/jest-util/-/jest-util-24.8.0.tgz";
        sha1 = "41f0e945da11df44cc76d64ffb915d0716f46cd1";
      };
    }
    {
      name = "jest-validate-24.8.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/jest-validate/-/jest-validate-24.8.0.tgz";
        sha1 = "624c41533e6dfe356ffadc6e2423a35c2d3b4849";
      };
    }
    {
      name = "jest-watcher-24.8.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/jest-watcher/-/jest-watcher-24.8.0.tgz";
        sha1 = "58d49915ceddd2de85e238f6213cef1c93715de4";
      };
    }
    {
      name = "jest-worker-24.6.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/jest-worker/-/jest-worker-24.6.0.tgz";
        sha1 = "7f81ceae34b7cde0c9827a6980c35b7cdc0161b3";
      };
    }
    {
      name = "jest-24.8.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/jest/-/jest-24.8.0.tgz";
        sha1 = "d5dff1984d0d1002196e9b7f12f75af1b2809081";
      };
    }
    {
      name = "jetpack-id-1.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/jetpack-id/-/jetpack-id-1.0.0.tgz";
        sha1 = "2cf9fbae46d8074fc16b7de0071c8efebca473a6";
      };
    }
    {
      name = "js-select-0.6.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/js-select/-/js-select-0.6.0.tgz";
        sha1 = "c284e22824d5927aec962dcdf247174aefb0d190";
      };
    }
    {
      name = "js-tokens-4.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/js-tokens/-/js-tokens-4.0.0.tgz";
        sha1 = "19203fb59991df98e3a287050d4647cdeaf32499";
      };
    }
    {
      name = "js-tokens-3.0.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/js-tokens/-/js-tokens-3.0.2.tgz";
        sha1 = "9866df395102130e38f7f996bceb65443209c25b";
      };
    }
    {
      name = "js-yaml-3.13.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/js-yaml/-/js-yaml-3.13.1.tgz";
        sha1 = "aff151b30bfdfa8e49e05da22e7415e9dfa37847";
      };
    }
    {
      name = "jsbn-0.1.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/jsbn/-/jsbn-0.1.1.tgz";
        sha1 = "a5e654c2e5a2deb5f201d96cefbca80c0ef2f513";
      };
    }
    {
      name = "jsdom-11.12.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/jsdom/-/jsdom-11.12.0.tgz";
        sha1 = "1a80d40ddd378a1de59656e9e6dc5a3ba8657bc8";
      };
    }
    {
      name = "jsesc-2.5.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/jsesc/-/jsesc-2.5.2.tgz";
        sha1 = "80564d2e483dacf6e8ef209650a67df3f0c283a4";
      };
    }
    {
      name = "json-buffer-3.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/json-buffer/-/json-buffer-3.0.0.tgz";
        sha1 = "5b1f397afc75d677bde8bcfc0e47e1f9a3d9a898";
      };
    }
    {
      name = "json-merge-patch-0.2.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/json-merge-patch/-/json-merge-patch-0.2.3.tgz";
        sha1 = "fa2c6b5af87da77bae2966a589d52e23ed81fe40";
      };
    }
    {
      name = "json-parse-better-errors-1.0.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/json-parse-better-errors/-/json-parse-better-errors-1.0.2.tgz";
        sha1 = "bb867cfb3450e69107c131d1c514bab3dc8bcaa9";
      };
    }
    {
      name = "json-schema-traverse-0.3.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/json-schema-traverse/-/json-schema-traverse-0.3.1.tgz";
        sha1 = "349a6d44c53a51de89b40805c5d5e59b417d3340";
      };
    }
    {
      name = "json-schema-traverse-0.4.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/json-schema-traverse/-/json-schema-traverse-0.4.1.tgz";
        sha1 = "69f6a87d9513ab8bb8fe63bdb0979c448e684660";
      };
    }
    {
      name = "json-schema-0.2.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/json-schema/-/json-schema-0.2.3.tgz";
        sha1 = "b480c892e59a2f05954ce727bd3f2a4e882f9e13";
      };
    }
    {
      name = "json-stable-stringify-without-jsonify-1.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/json-stable-stringify-without-jsonify/-/json-stable-stringify-without-jsonify-1.0.1.tgz";
        sha1 = "9db7b59496ad3f3cfef30a75142d2d930ad72651";
      };
    }
    {
      name = "json-stable-stringify-1.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/json-stable-stringify/-/json-stable-stringify-1.0.1.tgz";
        sha1 = "9a759d39c5f2ff503fd5300646ed445f88c4f9af";
      };
    }
    {
      name = "json-stringify-safe-5.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/json-stringify-safe/-/json-stringify-safe-5.0.1.tgz";
        sha1 = "1296a2d58fd45f19a0f6ce01d65701e2c735b6eb";
      };
    }
    {
      name = "json5-2.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/json5/-/json5-2.1.0.tgz";
        sha1 = "e7a0c62c48285c628d20a10b85c89bb807c32850";
      };
    }
    {
      name = "json5-1.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/json5/-/json5-1.0.1.tgz";
        sha1 = "779fb0018604fa854eacbf6252180d83543e3dbe";
      };
    }
    {
      name = "jsonfile-4.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/jsonfile/-/jsonfile-4.0.0.tgz";
        sha1 = "8771aae0799b64076b76640fca058f9c10e33ecb";
      };
    }
    {
      name = "jsonify-0.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/jsonify/-/jsonify-0.0.0.tgz";
        sha1 = "2c74b6ee41d93ca51b7b5aaee8f503631d252a73";
      };
    }
    {
      name = "jsonpointer-4.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/jsonpointer/-/jsonpointer-4.0.1.tgz";
        sha1 = "4fd92cb34e0e9db3c89c8622ecf51f9b978c6cb9";
      };
    }
    {
      name = "jsonwebtoken-8.2.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/jsonwebtoken/-/jsonwebtoken-8.2.1.tgz";
        sha1 = "333ee39aa8f238f32fa41693e7a2fb7e42f82b31";
      };
    }
    {
      name = "jsprim-1.4.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/jsprim/-/jsprim-1.4.1.tgz";
        sha1 = "313e66bc1e5cc06e438bc1b7499c2e5c56acb6a2";
      };
    }
    {
      name = "jszip-2.6.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/jszip/-/jszip-2.6.1.tgz";
        sha1 = "b88f3a7b2e67a2a048152982c7a3756d9c4828f0";
      };
    }
    {
      name = "jszip-3.2.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/jszip/-/jszip-3.2.1.tgz";
        sha1 = "c5d32df7274042282b157efb16e522b43435e01a";
      };
    }
    {
      name = "jwa-1.4.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/jwa/-/jwa-1.4.0.tgz";
        sha1 = "8f61dc799acf0309f2d4b22a91ce73d6d2bb206c";
      };
    }
    {
      name = "jws-3.2.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/jws/-/jws-3.2.1.tgz";
        sha1 = "d79d4216a62c9afa0a3d5e8b5356d75abdeb2be5";
      };
    }
    {
      name = "keyv-3.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/keyv/-/keyv-3.1.0.tgz";
        sha1 = "ecc228486f69991e49e9476485a5be1e8fc5c4d9";
      };
    }
    {
      name = "kind-of-2.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/kind-of/-/kind-of-2.0.1.tgz";
        sha1 = "018ec7a4ce7e3a86cb9141be519d24c8faa981b5";
      };
    }
    {
      name = "kind-of-3.2.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/kind-of/-/kind-of-3.2.2.tgz";
        sha1 = "31ea21a734bab9bbb0f32466d893aea51e4a3c64";
      };
    }
    {
      name = "kind-of-4.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/kind-of/-/kind-of-4.0.0.tgz";
        sha1 = "20813df3d712928b207378691a45066fae72dd57";
      };
    }
    {
      name = "kind-of-5.0.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/kind-of/-/kind-of-5.0.2.tgz";
        sha1 = "f57bec933d9a2209ffa96c5c08343607b7035fda";
      };
    }
    {
      name = "kind-of-6.0.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/kind-of/-/kind-of-6.0.2.tgz";
        sha1 = "01146b36a6218e64e58f3a8d66de5d7fc6f6d051";
      };
    }
    {
      name = "kleur-3.0.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/kleur/-/kleur-3.0.3.tgz";
        sha1 = "a79c9ecc86ee1ce3fa6206d1216c501f147fc07e";
      };
    }
    {
      name = "latest-version-3.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/latest-version/-/latest-version-3.1.0.tgz";
        sha1 = "a205383fea322b33b5ae3b18abee0dc2f356ee15";
      };
    }
    {
      name = "latest-version-5.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/latest-version/-/latest-version-5.1.0.tgz";
        sha1 = "119dfe908fe38d15dfa43ecd13fa12ec8832face";
      };
    }
    {
      name = "lazy-cache-0.2.7.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/lazy-cache/-/lazy-cache-0.2.7.tgz";
        sha1 = "7feddf2dcb6edb77d11ef1d117ab5ffdf0ab1b65";
      };
    }
    {
      name = "lazy-cache-2.0.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/lazy-cache/-/lazy-cache-2.0.2.tgz";
        sha1 = "b9190a4f913354694840859f8a8f7084d8822264";
      };
    }
    {
      name = "lazystream-1.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/lazystream/-/lazystream-1.0.0.tgz";
        sha1 = "f6995fe0f820392f61396be89462407bb77168e4";
      };
    }
    {
      name = "lcid-1.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/lcid/-/lcid-1.0.0.tgz";
        sha1 = "308accafa0bc483a3867b4b6f2b9506251d1b835";
      };
    }
    {
      name = "lcid-2.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/lcid/-/lcid-2.0.0.tgz";
        sha1 = "6ef5d2df60e52f82eb228a4c373e8d1f397253cf";
      };
    }
    {
      name = "left-pad-1.3.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/left-pad/-/left-pad-1.3.0.tgz";
        sha1 = "5b8a3a7765dfe001261dde915589e782f8c94d1e";
      };
    }
    {
      name = "leven-2.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/leven/-/leven-2.1.0.tgz";
        sha1 = "c2e7a9f772094dee9d34202ae8acce4687875580";
      };
    }
    {
      name = "levn-0.3.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/levn/-/levn-0.3.0.tgz";
        sha1 = "3b09924edf9f083c0490fdd4c0bc4421e04764ee";
      };
    }
    {
      name = "lie-3.3.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/lie/-/lie-3.3.0.tgz";
        sha1 = "dcf82dee545f46074daf200c7c1c5a08e0f40f6a";
      };
    }
    {
      name = "load-json-file-4.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/load-json-file/-/load-json-file-4.0.0.tgz";
        sha1 = "2f5f45ab91e33216234fd53adab668eb4ec0993b";
      };
    }
    {
      name = "loader-runner-2.4.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/loader-runner/-/loader-runner-2.4.0.tgz";
        sha1 = "ed47066bfe534d7e84c4c7b9998c2a75607d9357";
      };
    }
    {
      name = "loader-utils-1.2.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/loader-utils/-/loader-utils-1.2.3.tgz";
        sha1 = "1ff5dc6911c9f0a062531a4c04b609406108c2c7";
      };
    }
    {
      name = "locate-path-3.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/locate-path/-/locate-path-3.0.0.tgz";
        sha1 = "dbec3b3ab759758071b58fe59fc41871af21400e";
      };
    }
    {
      name = "lodash.assign-4.2.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/lodash.assign/-/lodash.assign-4.2.0.tgz";
        sha1 = "0d99f3ccd7a6d261d19bdaeb9245005d285808e7";
      };
    }
    {
      name = "lodash.assignin-4.2.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/lodash.assignin/-/lodash.assignin-4.2.0.tgz";
        sha1 = "ba8df5fb841eb0a3e8044232b0e263a8dc6a28a2";
      };
    }
    {
      name = "lodash.camelcase-4.3.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/lodash.camelcase/-/lodash.camelcase-4.3.0.tgz";
        sha1 = "b28aa6288a2b9fc651035c7711f65ab6190331a6";
      };
    }
    {
      name = "lodash.clone-4.5.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/lodash.clone/-/lodash.clone-4.5.0.tgz";
        sha1 = "195870450f5a13192478df4bc3d23d2dea1907b6";
      };
    }
    {
      name = "lodash.clonedeep-4.5.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/lodash.clonedeep/-/lodash.clonedeep-4.5.0.tgz";
        sha1 = "e23f3f9c4f8fbdde872529c1071857a086e5ccef";
      };
    }
    {
      name = "lodash.flatten-4.4.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/lodash.flatten/-/lodash.flatten-4.4.0.tgz";
        sha1 = "f31c22225a9632d2bbf8e4addbef240aa765a61f";
      };
    }
    {
      name = "lodash.get-4.4.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/lodash.get/-/lodash.get-4.4.2.tgz";
        sha1 = "2d177f652fa31e939b4438d5341499dfa3825e99";
      };
    }
    {
      name = "lodash.includes-4.3.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/lodash.includes/-/lodash.includes-4.3.0.tgz";
        sha1 = "60bb98a87cb923c68ca1e51325483314849f553f";
      };
    }
    {
      name = "lodash.isboolean-3.0.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/lodash.isboolean/-/lodash.isboolean-3.0.3.tgz";
        sha1 = "6c2e171db2a257cd96802fd43b01b20d5f5870f6";
      };
    }
    {
      name = "lodash.isinteger-4.0.4.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/lodash.isinteger/-/lodash.isinteger-4.0.4.tgz";
        sha1 = "619c0af3d03f8b04c31f5882840b77b11cd68343";
      };
    }
    {
      name = "lodash.isnumber-3.0.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/lodash.isnumber/-/lodash.isnumber-3.0.3.tgz";
        sha1 = "3ce76810c5928d03352301ac287317f11c0b1ffc";
      };
    }
    {
      name = "lodash.isplainobject-4.0.6.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/lodash.isplainobject/-/lodash.isplainobject-4.0.6.tgz";
        sha1 = "7c526a52d89b45c45cc690b88163be0497f550cb";
      };
    }
    {
      name = "lodash.isstring-4.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/lodash.isstring/-/lodash.isstring-4.0.1.tgz";
        sha1 = "d527dfb5456eca7cc9bb95d5daeaf88ba54a5451";
      };
    }
    {
      name = "lodash.once-4.1.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/lodash.once/-/lodash.once-4.1.1.tgz";
        sha1 = "0dd3971213c7c56df880977d504c88fb471a97ac";
      };
    }
    {
      name = "lodash.set-4.3.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/lodash.set/-/lodash.set-4.3.2.tgz";
        sha1 = "d8757b1da807dde24816b0d6a84bea1a76230b23";
      };
    }
    {
      name = "lodash.sortby-4.7.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/lodash.sortby/-/lodash.sortby-4.7.0.tgz";
        sha1 = "edd14c824e2cc9c1e0b0a1b42bb5210516a42438";
      };
    }
    {
      name = "lodash-4.17.11.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/lodash/-/lodash-4.17.11.tgz";
        sha1 = "b39ea6229ef607ecd89e2c8df12536891cac9b8d";
      };
    }
    {
      name = "log-symbols-2.2.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/log-symbols/-/log-symbols-2.2.0.tgz";
        sha1 = "5740e1c5d6f0dfda4ad9323b5332107ef6b4c40a";
      };
    }
    {
      name = "loglevelnext-1.0.5.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/loglevelnext/-/loglevelnext-1.0.5.tgz";
        sha1 = "36fc4f5996d6640f539ff203ba819641680d75a2";
      };
    }
    {
      name = "loose-envify-1.4.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/loose-envify/-/loose-envify-1.4.0.tgz";
        sha1 = "71ee51fa7be4caec1a63839f7e682d8132d30caf";
      };
    }
    {
      name = "lowercase-keys-1.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/lowercase-keys/-/lowercase-keys-1.0.1.tgz";
        sha1 = "6f9e30b47084d971a7c820ff15a6c5167b74c26f";
      };
    }
    {
      name = "lowercase-keys-2.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/lowercase-keys/-/lowercase-keys-2.0.0.tgz";
        sha1 = "2603e78b7b4b0006cbca2fbcc8a3202558ac9479";
      };
    }
    {
      name = "lru-cache-4.1.5.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/lru-cache/-/lru-cache-4.1.5.tgz";
        sha1 = "8bbe50ea85bed59bc9e33dcab8235ee9bcf443cd";
      };
    }
    {
      name = "lru-cache-5.1.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/lru-cache/-/lru-cache-5.1.1.tgz";
        sha1 = "1da27e6710271947695daf6848e847f01d84b920";
      };
    }
    {
      name = "macos-release-2.3.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/macos-release/-/macos-release-2.3.0.tgz";
        sha1 = "eb1930b036c0800adebccd5f17bc4c12de8bb71f";
      };
    }
    {
      name = "make-dir-1.3.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/make-dir/-/make-dir-1.3.0.tgz";
        sha1 = "79c1033b80515bd6d24ec9933e860ca75ee27f0c";
      };
    }
    {
      name = "make-dir-2.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/make-dir/-/make-dir-2.1.0.tgz";
        sha1 = "5f0310e18b8be898cc07009295a30ae41e91e6f5";
      };
    }
    {
      name = "make-error-1.3.5.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/make-error/-/make-error-1.3.5.tgz";
        sha1 = "efe4e81f6db28cadd605c70f29c831b58ef776c8";
      };
    }
    {
      name = "makeerror-1.0.11.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/makeerror/-/makeerror-1.0.11.tgz";
        sha1 = "e01a5c9109f2af79660e4e8b9587790184f5a96c";
      };
    }
    {
      name = "mamacro-0.0.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/mamacro/-/mamacro-0.0.3.tgz";
        sha1 = "ad2c9576197c9f1abf308d0787865bd975a3f3e4";
      };
    }
    {
      name = "map-age-cleaner-0.1.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/map-age-cleaner/-/map-age-cleaner-0.1.3.tgz";
        sha1 = "7d583a7306434c055fe474b0f45078e6e1b4b92a";
      };
    }
    {
      name = "map-cache-0.2.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/map-cache/-/map-cache-0.2.2.tgz";
        sha1 = "c32abd0bd6525d9b051645bb4f26ac5dc98a0dbf";
      };
    }
    {
      name = "map-visit-1.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/map-visit/-/map-visit-1.0.0.tgz";
        sha1 = "ecdca8f13144e660f1b5bd41f12f3479d98dfb8f";
      };
    }
    {
      name = "mark.js-8.11.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/mark.js/-/mark.js-8.11.1.tgz";
        sha1 = "180f1f9ebef8b0e638e4166ad52db879beb2ffc5";
      };
    }
    {
      name = "marked-0.7.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/marked/-/marked-0.7.0.tgz";
        sha1 = "b64201f051d271b1edc10a04d1ae9b74bb8e5c0e";
      };
    }
    {
      name = "md5.js-1.3.5.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/md5.js/-/md5.js-1.3.5.tgz";
        sha1 = "b5d07b8e3216e3e27cd728d72f70d1e6a342005f";
      };
    }
    {
      name = "mdn-browser-compat-data-0.0.82.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/mdn-browser-compat-data/-/mdn-browser-compat-data-0.0.82.tgz";
        sha1 = "1fdf4979e548eaeed193464d19dbb4381ba7768b";
      };
    }
    {
      name = "mem-4.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/mem/-/mem-4.1.0.tgz";
        sha1 = "aeb9be2d21f47e78af29e4ac5978e8afa2ca5b8a";
      };
    }
    {
      name = "memory-fs-0.4.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/memory-fs/-/memory-fs-0.4.1.tgz";
        sha1 = "3a9a20b8462523e447cfbc7e8bb80ed667bfc552";
      };
    }
    {
      name = "merge-stream-1.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/merge-stream/-/merge-stream-1.0.1.tgz";
        sha1 = "4041202d508a342ba00174008df0c251b8c135e1";
      };
    }
    {
      name = "micromatch-3.1.10.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/micromatch/-/micromatch-3.1.10.tgz";
        sha1 = "70859bc95c9840952f359a068a3fc49f9ecfac23";
      };
    }
    {
      name = "miller-rabin-4.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/miller-rabin/-/miller-rabin-4.0.1.tgz";
        sha1 = "f080351c865b0dc562a8462966daa53543c78a4d";
      };
    }
    {
      name = "mime-db-1.38.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/mime-db/-/mime-db-1.38.0.tgz";
        sha1 = "1a2aab16da9eb167b49c6e4df2d9c68d63d8e2ad";
      };
    }
    {
      name = "mime-types-2.1.22.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/mime-types/-/mime-types-2.1.22.tgz";
        sha1 = "fe6b355a190926ab7698c9a0556a11199b2199bd";
      };
    }
    {
      name = "mimic-fn-1.2.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/mimic-fn/-/mimic-fn-1.2.0.tgz";
        sha1 = "820c86a39334640e99516928bd03fca88057d022";
      };
    }
    {
      name = "mimic-response-1.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/mimic-response/-/mimic-response-1.0.1.tgz";
        sha1 = "4923538878eef42063cb8a3e3b0798781487ab1b";
      };
    }
    {
      name = "minimalistic-assert-1.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/minimalistic-assert/-/minimalistic-assert-1.0.1.tgz";
        sha1 = "2e194de044626d4a10e7f7fbc00ce73e83e4d5c7";
      };
    }
    {
      name = "minimalistic-crypto-utils-1.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/minimalistic-crypto-utils/-/minimalistic-crypto-utils-1.0.1.tgz";
        sha1 = "f6c00c1c0b082246e5c4d99dfb8c7c083b2b582a";
      };
    }
    {
      name = "minimatch-3.0.4.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/minimatch/-/minimatch-3.0.4.tgz";
        sha1 = "5166e286457f03306064be5497e8dbb0c3d32083";
      };
    }
    {
      name = "minimist-0.0.8.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/minimist/-/minimist-0.0.8.tgz";
        sha1 = "857fcabfc3397d2625b8228262e86aa7a011b05d";
      };
    }
    {
      name = "minimist-1.2.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/minimist/-/minimist-1.2.0.tgz";
        sha1 = "a35008b20f41383eec1fb914f4cd5df79a264284";
      };
    }
    {
      name = "minipass-2.3.5.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/minipass/-/minipass-2.3.5.tgz";
        sha1 = "cacebe492022497f656b0f0f51e2682a9ed2d848";
      };
    }
    {
      name = "minizlib-1.2.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/minizlib/-/minizlib-1.2.1.tgz";
        sha1 = "dd27ea6136243c7c880684e8672bb3a45fd9b614";
      };
    }
    {
      name = "mississippi-3.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/mississippi/-/mississippi-3.0.0.tgz";
        sha1 = "ea0a3291f97e0b5e8776b363d5f0a12d94c67022";
      };
    }
    {
      name = "mithril-1.1.6.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/mithril/-/mithril-1.1.6.tgz";
        sha1 = "bd2cc0de3d3c86076a6a7a30367a601a1bd108f3";
      };
    }
    {
      name = "mixin-deep-1.3.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/mixin-deep/-/mixin-deep-1.3.1.tgz";
        sha1 = "a49e7268dce1a0d9698e45326c5626df3543d0fe";
      };
    }
    {
      name = "mixin-object-2.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/mixin-object/-/mixin-object-2.0.1.tgz";
        sha1 = "4fb949441dab182540f1fe035ba60e1947a5e57e";
      };
    }
    {
      name = "mkdirp-0.5.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/mkdirp/-/mkdirp-0.5.1.tgz";
        sha1 = "30057438eac6cf7f8c4767f38648d6697d75c903";
      };
    }
    {
      name = "moment-2.24.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/moment/-/moment-2.24.0.tgz";
        sha1 = "0d055d53f5052aa653c9f6eb68bb5d12bf5c2b5b";
      };
    }
    {
      name = "moo-0.4.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/moo/-/moo-0.4.3.tgz";
        sha1 = "3f847a26f31cf625a956a87f2b10fbc013bfd10e";
      };
    }
    {
      name = "move-concurrently-1.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/move-concurrently/-/move-concurrently-1.0.1.tgz";
        sha1 = "be2c005fda32e0b29af1f05d7c4b33214c701f92";
      };
    }
    {
      name = "ms-2.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/ms/-/ms-2.0.0.tgz";
        sha1 = "5608aeadfc00be6c2901df5f9861788de0d597c8";
      };
    }
    {
      name = "ms-2.1.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/ms/-/ms-2.1.1.tgz";
        sha1 = "30a5864eb3ebb0a66f2ebe6d727af06a09d86e0a";
      };
    }
    {
      name = "multimatch-4.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/multimatch/-/multimatch-4.0.0.tgz";
        sha1 = "8c3c0f6e3e8449ada0af3dd29efb491a375191b3";
      };
    }
    {
      name = "mute-stream-0.0.5.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/mute-stream/-/mute-stream-0.0.5.tgz";
        sha1 = "8fbfabb0a98a253d3184331f9e8deb7372fac6c0";
      };
    }
    {
      name = "mute-stream-0.0.7.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/mute-stream/-/mute-stream-0.0.7.tgz";
        sha1 = "3075ce93bc21b8fab43e1bc4da7e8115ed1e7bab";
      };
    }
    {
      name = "mv-2.1.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/mv/-/mv-2.1.1.tgz";
        sha1 = "ae6ce0d6f6d5e0a4f7d893798d03c1ea9559b6a2";
      };
    }
    {
      name = "mz-2.5.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/mz/-/mz-2.5.0.tgz";
        sha1 = "2859025df03d46b57bb317174b196477ce64cec1";
      };
    }
    {
      name = "mz-2.7.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/mz/-/mz-2.7.0.tgz";
        sha1 = "95008057a56cafadc2bc63dde7f9ff6955948e32";
      };
    }
    {
      name = "nan-2.12.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/nan/-/nan-2.12.1.tgz";
        sha1 = "7b1aa193e9aa86057e3c7bbd0ac448e770925552";
      };
    }
    {
      name = "nanomatch-1.2.9.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/nanomatch/-/nanomatch-1.2.9.tgz";
        sha1 = "879f7150cb2dab7a471259066c104eee6e0fa7c2";
      };
    }
    {
      name = "natural-compare-lite-1.4.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/natural-compare-lite/-/natural-compare-lite-1.4.0.tgz";
        sha1 = "17b09581988979fddafe0201e931ba933c96cbb4";
      };
    }
    {
      name = "natural-compare-1.4.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/natural-compare/-/natural-compare-1.4.0.tgz";
        sha1 = "4abebfeed7541f2c27acfb29bdbbd15c8d5ba4f7";
      };
    }
    {
      name = "nconf-0.10.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/nconf/-/nconf-0.10.0.tgz";
        sha1 = "da1285ee95d0a922ca6cee75adcf861f48205ad2";
      };
    }
    {
      name = "ncp-2.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/ncp/-/ncp-2.0.0.tgz";
        sha1 = "195a21d6c46e361d2fb1281ba38b91e9df7bdbb3";
      };
    }
    {
      name = "nearley-2.18.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/nearley/-/nearley-2.18.0.tgz";
        sha1 = "a9193612dd6d528a2e47e743b1dc694cfe105223";
      };
    }
    {
      name = "needle-2.2.4.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/needle/-/needle-2.2.4.tgz";
        sha1 = "51931bff82533b1928b7d1d69e01f1b00ffd2a4e";
      };
    }
    {
      name = "needle-2.4.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/needle/-/needle-2.4.0.tgz";
        sha1 = "6833e74975c444642590e15a750288c5f939b57c";
      };
    }
    {
      name = "neo-async-2.6.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/neo-async/-/neo-async-2.6.0.tgz";
        sha1 = "b9d15e4d71c6762908654b5183ed38b753340835";
      };
    }
    {
      name = "netmask-1.0.6.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/netmask/-/netmask-1.0.6.tgz";
        sha1 = "20297e89d86f6f6400f250d9f4f6b4c1945fcd35";
      };
    }
    {
      name = "next-tick-1.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/next-tick/-/next-tick-1.0.0.tgz";
        sha1 = "ca86d1fe8828169b0120208e3dc8424b9db8342c";
      };
    }
    {
      name = "nice-try-1.0.5.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/nice-try/-/nice-try-1.0.5.tgz";
        sha1 = "a3378a7696ce7d223e88fc9b764bd7ef1089e366";
      };
    }
    {
      name = "node-forge-0.7.6.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/node-forge/-/node-forge-0.7.6.tgz";
        sha1 = "fdf3b418aee1f94f0ef642cd63486c77ca9724ac";
      };
    }
    {
      name = "node-int64-0.4.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/node-int64/-/node-int64-0.4.0.tgz";
        sha1 = "87a9065cdb355d3182d8f94ce11188b825c68a3b";
      };
    }
    {
      name = "node-libs-browser-2.2.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/node-libs-browser/-/node-libs-browser-2.2.0.tgz";
        sha1 = "c72f60d9d46de08a940dedbb25f3ffa2f9bbaa77";
      };
    }
    {
      name = "node-modules-regexp-1.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/node-modules-regexp/-/node-modules-regexp-1.0.0.tgz";
        sha1 = "8d9dbe28964a4ac5712e9131642107c71e90ec40";
      };
    }
    {
      name = "node-notifier-5.4.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/node-notifier/-/node-notifier-5.4.0.tgz";
        sha1 = "7b455fdce9f7de0c63538297354f3db468426e6a";
      };
    }
    {
      name = "node-pre-gyp-0.10.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/node-pre-gyp/-/node-pre-gyp-0.10.3.tgz";
        sha1 = "3070040716afdc778747b61b6887bf78880b80fc";
      };
    }
    {
      name = "node-status-codes-1.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/node-status-codes/-/node-status-codes-1.0.0.tgz";
        sha1 = "5ae5541d024645d32a58fcddc9ceecea7ae3ac2f";
      };
    }
    {
      name = "nomnom-1.8.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/nomnom/-/nomnom-1.8.1.tgz";
        sha1 = "2151f722472ba79e50a76fc125bb8c8f2e4dc2a7";
      };
    }
    {
      name = "nopt-4.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/nopt/-/nopt-4.0.1.tgz";
        sha1 = "d0d4685afd5415193c8c7505602d0d17cd64474d";
      };
    }
    {
      name = "normalize-package-data-2.5.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/normalize-package-data/-/normalize-package-data-2.5.0.tgz";
        sha1 = "e66db1838b200c1dfc233225d12cb36520e234a8";
      };
    }
    {
      name = "normalize-path-2.1.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/normalize-path/-/normalize-path-2.1.1.tgz";
        sha1 = "1ab28b556e198363a8c1a6f7e6fa20137fe6aed9";
      };
    }
    {
      name = "normalize-path-3.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/normalize-path/-/normalize-path-3.0.0.tgz";
        sha1 = "0dcd69ff23a1c9b11fd0978316644a0388216a65";
      };
    }
    {
      name = "normalize-url-3.3.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/normalize-url/-/normalize-url-3.3.0.tgz";
        sha1 = "b2e1c4dc4f7c6d57743df733a4f5978d18650559";
      };
    }
    {
      name = "normalize-url-4.3.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/normalize-url/-/normalize-url-4.3.0.tgz";
        sha1 = "9c49e10fc1876aeb76dba88bf1b2b5d9fa57b2ee";
      };
    }
    {
      name = "npm-bundled-1.0.5.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/npm-bundled/-/npm-bundled-1.0.5.tgz";
        sha1 = "3c1732b7ba936b3a10325aef616467c0ccbcc979";
      };
    }
    {
      name = "npm-packlist-1.2.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/npm-packlist/-/npm-packlist-1.2.0.tgz";
        sha1 = "55a60e793e272f00862c7089274439a4cc31fc7f";
      };
    }
    {
      name = "npm-run-path-2.0.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/npm-run-path/-/npm-run-path-2.0.2.tgz";
        sha1 = "35a9232dfa35d7067b4cb2ddf2357b1871536c5f";
      };
    }
    {
      name = "npmlog-4.1.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/npmlog/-/npmlog-4.1.2.tgz";
        sha1 = "08a7f2a8bf734604779a9efa4ad5cc717abb954b";
      };
    }
    {
      name = "nth-check-1.0.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/nth-check/-/nth-check-1.0.2.tgz";
        sha1 = "b2bd295c37e3dd58a3bf0700376663ba4d9cf05c";
      };
    }
    {
      name = "number-is-nan-1.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/number-is-nan/-/number-is-nan-1.0.1.tgz";
        sha1 = "097b602b53422a522c1afb8790318336941a011d";
      };
    }
    {
      name = "nwsapi-2.1.4.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/nwsapi/-/nwsapi-2.1.4.tgz";
        sha1 = "e006a878db23636f8e8a67d33ca0e4edf61a842f";
      };
    }
    {
      name = "oauth-sign-0.8.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/oauth-sign/-/oauth-sign-0.8.2.tgz";
        sha1 = "46a6ab7f0aead8deae9ec0565780b7d4efeb9d43";
      };
    }
    {
      name = "oauth-sign-0.9.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/oauth-sign/-/oauth-sign-0.9.0.tgz";
        sha1 = "47a7b016baa68b5fa0ecf3dee08a85c679ac6455";
      };
    }
    {
      name = "object-assign-4.1.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/object-assign/-/object-assign-4.1.1.tgz";
        sha1 = "2109adc7965887cfc05cbbd442cac8bfbb360863";
      };
    }
    {
      name = "object-copy-0.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/object-copy/-/object-copy-0.1.0.tgz";
        sha1 = "7e7d858b781bd7c991a41ba975ed3812754e998c";
      };
    }
    {
      name = "object-hash-1.3.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/object-hash/-/object-hash-1.3.1.tgz";
        sha1 = "fde452098a951cb145f039bb7d455449ddc126df";
      };
    }
    {
      name = "object-keys-1.0.12.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/object-keys/-/object-keys-1.0.12.tgz";
        sha1 = "09c53855377575310cca62f55bb334abff7b3ed2";
      };
    }
    {
      name = "object-visit-1.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/object-visit/-/object-visit-1.0.1.tgz";
        sha1 = "f79c4493af0c5377b59fe39d395e41042dd045bb";
      };
    }
    {
      name = "object.assign-4.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/object.assign/-/object.assign-4.1.0.tgz";
        sha1 = "968bf1100d7956bb3ca086f006f846b3bc4008da";
      };
    }
    {
      name = "object.getownpropertydescriptors-2.0.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/object.getownpropertydescriptors/-/object.getownpropertydescriptors-2.0.3.tgz";
        sha1 = "8758c846f5b407adab0f236e0986f14b051caa16";
      };
    }
    {
      name = "object.pick-1.3.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/object.pick/-/object.pick-1.3.0.tgz";
        sha1 = "87a10ac4c1694bd2e1cbf53591a66141fb5dd747";
      };
    }
    {
      name = "once-1.4.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/once/-/once-1.4.0.tgz";
        sha1 = "583b1aa775961d4b113ac17d9c50baef9dd76bd1";
      };
    }
    {
      name = "once-1.3.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/once/-/once-1.3.3.tgz";
        sha1 = "b2e261557ce4c314ec8304f3fa82663e4297ca20";
      };
    }
    {
      name = "onetime-1.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/onetime/-/onetime-1.1.0.tgz";
        sha1 = "a1f7838f8314c516f05ecefcbc4ccfe04b4ed789";
      };
    }
    {
      name = "onetime-2.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/onetime/-/onetime-2.0.1.tgz";
        sha1 = "067428230fd67443b2794b22bba528b6867962d4";
      };
    }
    {
      name = "opn-5.5.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/opn/-/opn-5.5.0.tgz";
        sha1 = "fc7164fab56d235904c51c3b27da6758ca3b9bfc";
      };
    }
    {
      name = "optimist-0.6.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/optimist/-/optimist-0.6.1.tgz";
        sha1 = "da3ea74686fa21a19a111c326e90eb15a0196686";
      };
    }
    {
      name = "optionator-0.8.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/optionator/-/optionator-0.8.2.tgz";
        sha1 = "364c5e409d3f4d6301d6c0b4c05bba50180aeb64";
      };
    }
    {
      name = "os-browserify-0.3.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/os-browserify/-/os-browserify-0.3.0.tgz";
        sha1 = "854373c7f5c2315914fc9bfc6bd8238fdda1ec27";
      };
    }
    {
      name = "os-homedir-1.0.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/os-homedir/-/os-homedir-1.0.2.tgz";
        sha1 = "ffbc4988336e0e833de0c168c7ef152121aa7fb3";
      };
    }
    {
      name = "os-locale-3.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/os-locale/-/os-locale-3.1.0.tgz";
        sha1 = "a802a6ee17f24c10483ab9935719cef4ed16bf1a";
      };
    }
    {
      name = "os-locale-1.4.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/os-locale/-/os-locale-1.4.0.tgz";
        sha1 = "20f9f17ae29ed345e8bde583b13d2009803c14d9";
      };
    }
    {
      name = "os-name-3.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/os-name/-/os-name-3.1.0.tgz";
        sha1 = "dec19d966296e1cd62d701a5a66ee1ddeae70801";
      };
    }
    {
      name = "os-shim-0.1.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/os-shim/-/os-shim-0.1.3.tgz";
        sha1 = "6b62c3791cf7909ea35ed46e17658bb417cb3917";
      };
    }
    {
      name = "os-tmpdir-1.0.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/os-tmpdir/-/os-tmpdir-1.0.2.tgz";
        sha1 = "bbe67406c79aa85c5cfec766fe5734555dfa1274";
      };
    }
    {
      name = "osenv-0.1.5.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/osenv/-/osenv-0.1.5.tgz";
        sha1 = "85cdfafaeb28e8677f416e287592b5f3f49ea410";
      };
    }
    {
      name = "p-cancelable-1.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/p-cancelable/-/p-cancelable-1.1.0.tgz";
        sha1 = "d078d15a3af409220c886f1d9a0ca2e441ab26cc";
      };
    }
    {
      name = "p-defer-1.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/p-defer/-/p-defer-1.0.0.tgz";
        sha1 = "9f6eb182f6c9aa8cd743004a7d4f96b196b0fb0c";
      };
    }
    {
      name = "p-each-series-1.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/p-each-series/-/p-each-series-1.0.0.tgz";
        sha1 = "930f3d12dd1f50e7434457a22cd6f04ac6ad7f71";
      };
    }
    {
      name = "p-finally-1.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/p-finally/-/p-finally-1.0.0.tgz";
        sha1 = "3fbcfb15b899a44123b34b6dcc18b724336a2cae";
      };
    }
    {
      name = "p-is-promise-2.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/p-is-promise/-/p-is-promise-2.0.0.tgz";
        sha1 = "7554e3d572109a87e1f3f53f6a7d85d1b194f4c5";
      };
    }
    {
      name = "p-limit-2.2.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/p-limit/-/p-limit-2.2.0.tgz";
        sha1 = "417c9941e6027a9abcba5092dd2904e255b5fbc2";
      };
    }
    {
      name = "p-locate-3.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/p-locate/-/p-locate-3.0.0.tgz";
        sha1 = "322d69a05c0264b25997d9f40cd8a891ab0064a4";
      };
    }
    {
      name = "p-reduce-1.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/p-reduce/-/p-reduce-1.0.0.tgz";
        sha1 = "18c2b0dd936a4690a529f8231f58a0fdb6a47dfa";
      };
    }
    {
      name = "p-try-2.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/p-try/-/p-try-2.0.0.tgz";
        sha1 = "85080bb87c64688fa47996fe8f7dfbe8211760b1";
      };
    }
    {
      name = "pac-proxy-agent-3.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/pac-proxy-agent/-/pac-proxy-agent-3.0.0.tgz";
        sha1 = "11d578b72a164ad74bf9d5bac9ff462a38282432";
      };
    }
    {
      name = "pac-resolver-3.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/pac-resolver/-/pac-resolver-3.0.0.tgz";
        sha1 = "6aea30787db0a891704deb7800a722a7615a6f26";
      };
    }
    {
      name = "package-json-4.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/package-json/-/package-json-4.0.1.tgz";
        sha1 = "8869a0401253661c4c4ca3da6c2121ed555f5eed";
      };
    }
    {
      name = "package-json-6.4.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/package-json/-/package-json-6.4.0.tgz";
        sha1 = "4f626976604f4a9a41723ce1792b204a60b1b61e";
      };
    }
    {
      name = "pako-1.0.10.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/pako/-/pako-1.0.10.tgz";
        sha1 = "4328badb5086a426aa90f541977d4955da5c9732";
      };
    }
    {
      name = "parallel-transform-1.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/parallel-transform/-/parallel-transform-1.1.0.tgz";
        sha1 = "d410f065b05da23081fcd10f28854c29bda33b06";
      };
    }
    {
      name = "parent-module-1.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/parent-module/-/parent-module-1.0.0.tgz";
        sha1 = "df250bdc5391f4a085fb589dad761f5ad6b865b5";
      };
    }
    {
      name = "parse-asn1-5.1.4.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/parse-asn1/-/parse-asn1-5.1.4.tgz";
        sha1 = "37f6628f823fbdeb2273b4d540434a22f3ef1fcc";
      };
    }
    {
      name = "parse-json-4.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/parse-json/-/parse-json-4.0.0.tgz";
        sha1 = "be35f5425be1f7f6c747184f98a788cb99477ee0";
      };
    }
    {
      name = "parse-json-2.2.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/parse-json/-/parse-json-2.2.0.tgz";
        sha1 = "f480f40434ef80741f8469099f8dea18f55a4dc9";
      };
    }
    {
      name = "parse-passwd-1.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/parse-passwd/-/parse-passwd-1.0.0.tgz";
        sha1 = "6d5b934a456993b23d37f40a382d6f1666a8e5c6";
      };
    }
    {
      name = "parse-path-4.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/parse-path/-/parse-path-4.0.1.tgz";
        sha1 = "0ec769704949778cb3b8eda5e994c32073a1adff";
      };
    }
    {
      name = "parse-url-5.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/parse-url/-/parse-url-5.0.1.tgz";
        sha1 = "99c4084fc11be14141efa41b3d117a96fcb9527f";
      };
    }
    {
      name = "parse5-4.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/parse5/-/parse5-4.0.0.tgz";
        sha1 = "6d78656e3da8d78b4ec0b906f7c08ef1dfe3f608";
      };
    }
    {
      name = "parse5-3.0.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/parse5/-/parse5-3.0.3.tgz";
        sha1 = "042f792ffdd36851551cf4e9e066b3874ab45b5c";
      };
    }
    {
      name = "pascalcase-0.1.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/pascalcase/-/pascalcase-0.1.1.tgz";
        sha1 = "b363e55e8006ca6fe21784d2db22bd15d7917f14";
      };
    }
    {
      name = "path-browserify-0.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/path-browserify/-/path-browserify-0.0.0.tgz";
        sha1 = "a0b870729aae214005b7d5032ec2cbbb0fb4451a";
      };
    }
    {
      name = "path-dirname-1.0.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/path-dirname/-/path-dirname-1.0.2.tgz";
        sha1 = "cc33d24d525e099a5388c0336c6e32b9160609e0";
      };
    }
    {
      name = "path-exists-3.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/path-exists/-/path-exists-3.0.0.tgz";
        sha1 = "ce0ebeaa5f78cb18925ea7d810d7b59b010fd515";
      };
    }
    {
      name = "path-is-absolute-1.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/path-is-absolute/-/path-is-absolute-1.0.1.tgz";
        sha1 = "174b9268735534ffbc7ace6bf53a5a9e1b5c5f5f";
      };
    }
    {
      name = "path-is-inside-1.0.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/path-is-inside/-/path-is-inside-1.0.2.tgz";
        sha1 = "365417dede44430d1c11af61027facf074bdfc53";
      };
    }
    {
      name = "path-key-2.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/path-key/-/path-key-2.0.1.tgz";
        sha1 = "411cadb574c5a140d3a4b1910d40d80cc9f40b40";
      };
    }
    {
      name = "path-parse-1.0.6.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/path-parse/-/path-parse-1.0.6.tgz";
        sha1 = "d62dbb5679405d72c4737ec58600e9ddcf06d24c";
      };
    }
    {
      name = "path-type-3.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/path-type/-/path-type-3.0.0.tgz";
        sha1 = "cef31dc8e0a1a3bb0d105c0cd97cf3bf47f4e36f";
      };
    }
    {
      name = "path-0.12.7.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/path/-/path-0.12.7.tgz";
        sha1 = "d4dc2a506c4ce2197eb481ebfcd5b36c0140b10f";
      };
    }
    {
      name = "pbkdf2-3.0.17.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/pbkdf2/-/pbkdf2-3.0.17.tgz";
        sha1 = "976c206530617b14ebb32114239f7b09336e93a6";
      };
    }
    {
      name = "pend-1.2.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/pend/-/pend-1.2.0.tgz";
        sha1 = "7a57eb550a6783f9115331fcf4663d5c8e007a50";
      };
    }
    {
      name = "performance-now-2.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/performance-now/-/performance-now-2.1.0.tgz";
        sha1 = "6309f4e0e5fa913ec1c69307ae364b4b377c9e7b";
      };
    }
    {
      name = "pify-3.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/pify/-/pify-3.0.0.tgz";
        sha1 = "e5a4acd2c101fdf3d9a4d07f0dbc4db49dd28176";
      };
    }
    {
      name = "pify-4.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/pify/-/pify-4.0.1.tgz";
        sha1 = "4b2cd25c50d598735c50292224fd8c6df41e3231";
      };
    }
    {
      name = "pinkie-promise-2.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/pinkie-promise/-/pinkie-promise-2.0.1.tgz";
        sha1 = "2135d6dfa7a358c069ac9b178776288228450ffa";
      };
    }
    {
      name = "pinkie-2.0.4.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/pinkie/-/pinkie-2.0.4.tgz";
        sha1 = "72556b80cfa0d48a974e80e77248e80ed4f7f870";
      };
    }
    {
      name = "pino-std-serializers-2.3.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/pino-std-serializers/-/pino-std-serializers-2.3.0.tgz";
        sha1 = "34eeaab97c055c28e22c0542ae55978e7e427786";
      };
    }
    {
      name = "pino-5.12.6.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/pino/-/pino-5.12.6.tgz";
        sha1 = "04a668278d7616db71871f1bd3e26f6918e05feb";
      };
    }
    {
      name = "pirates-4.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/pirates/-/pirates-4.0.1.tgz";
        sha1 = "643a92caf894566f91b2b986d2c66950a8e2fb87";
      };
    }
    {
      name = "pkg-dir-3.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/pkg-dir/-/pkg-dir-3.0.0.tgz";
        sha1 = "2749020f239ed990881b1f71210d51eb6523bea3";
      };
    }
    {
      name = "pluralize-1.2.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/pluralize/-/pluralize-1.2.1.tgz";
        sha1 = "d1a21483fd22bb41e58a12fa3421823140897c45";
      };
    }
    {
      name = "pn-1.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/pn/-/pn-1.1.0.tgz";
        sha1 = "e2f4cef0e219f463c179ab37463e4e1ecdccbafb";
      };
    }
    {
      name = "po2json-0.4.5.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/po2json/-/po2json-0.4.5.tgz";
        sha1 = "47bb2952da32d58a1be2f256a598eebc0b745118";
      };
    }
    {
      name = "posix-character-classes-0.1.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/posix-character-classes/-/posix-character-classes-0.1.1.tgz";
        sha1 = "01eac0fe3b5af71a2a6c02feabb8c1fef7e00eab";
      };
    }
    {
      name = "postcss-7.0.16.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/postcss/-/postcss-7.0.16.tgz";
        sha1 = "48f64f1b4b558cb8b52c88987724359acb010da2";
      };
    }
    {
      name = "prelude-ls-1.1.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/prelude-ls/-/prelude-ls-1.1.2.tgz";
        sha1 = "21932a549f5e52ffd9a827f570e04be62a97da54";
      };
    }
    {
      name = "prepend-http-1.0.4.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/prepend-http/-/prepend-http-1.0.4.tgz";
        sha1 = "d4f4562b0ce3696e41ac52d0e002e57a635dc6dc";
      };
    }
    {
      name = "prepend-http-2.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/prepend-http/-/prepend-http-2.0.0.tgz";
        sha1 = "e92434bfa5ea8c19f41cdfd401d741a3c819d897";
      };
    }
    {
      name = "prettier-1.18.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/prettier/-/prettier-1.18.2.tgz";
        sha1 = "6823e7c5900017b4bd3acf46fe9ac4b4d7bda9ea";
      };
    }
    {
      name = "pretty-format-24.8.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/pretty-format/-/pretty-format-24.8.0.tgz";
        sha1 = "8dae7044f58db7cb8be245383b565a963e3c27f2";
      };
    }
    {
      name = "probe-image-size-4.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/probe-image-size/-/probe-image-size-4.0.0.tgz";
        sha1 = "d35b71759e834bcf580ea9f18ec8b9265c0977eb";
      };
    }
    {
      name = "process-nextick-args-1.0.7.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/process-nextick-args/-/process-nextick-args-1.0.7.tgz";
        sha1 = "150e20b756590ad3f91093f25a4f2ad8bff30ba3";
      };
    }
    {
      name = "process-nextick-args-2.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/process-nextick-args/-/process-nextick-args-2.0.0.tgz";
        sha1 = "a37d732f4271b4ab1ad070d35508e8290788ffaa";
      };
    }
    {
      name = "process-0.11.10.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/process/-/process-0.11.10.tgz";
        sha1 = "7332300e840161bda3e69a1d1d91a7d4bc16f182";
      };
    }
    {
      name = "progress-1.1.8.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/progress/-/progress-1.1.8.tgz";
        sha1 = "e260c78f6161cdd9b0e56cc3e0a85de17c7a57be";
      };
    }
    {
      name = "progress-2.0.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/progress/-/progress-2.0.3.tgz";
        sha1 = "7e8cf8d8f5b8f239c1bc68beb4eb78567d572ef8";
      };
    }
    {
      name = "promise-inflight-1.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/promise-inflight/-/promise-inflight-1.0.1.tgz";
        sha1 = "98472870bf228132fcbdd868129bad12c3c029e3";
      };
    }
    {
      name = "promise-7.3.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/promise/-/promise-7.3.1.tgz";
        sha1 = "064b72602b18f90f29192b8b1bc418ffd1ebd3bf";
      };
    }
    {
      name = "prompts-2.0.4.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/prompts/-/prompts-2.0.4.tgz";
        sha1 = "179f9d4db3128b9933aa35f93a800d8fce76a682";
      };
    }
    {
      name = "protocols-1.4.7.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/protocols/-/protocols-1.4.7.tgz";
        sha1 = "95f788a4f0e979b291ffefcf5636ad113d037d32";
      };
    }
    {
      name = "proxy-agent-3.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/proxy-agent/-/proxy-agent-3.1.0.tgz";
        sha1 = "3cf86ee911c94874de4359f37efd9de25157c113";
      };
    }
    {
      name = "proxy-from-env-1.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/proxy-from-env/-/proxy-from-env-1.0.0.tgz";
        sha1 = "33c50398f70ea7eb96d21f7b817630a55791c7ee";
      };
    }
    {
      name = "prr-1.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/prr/-/prr-1.0.1.tgz";
        sha1 = "d3fc114ba06995a45ec6893f484ceb1d78f5f476";
      };
    }
    {
      name = "pseudomap-1.0.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/pseudomap/-/pseudomap-1.0.2.tgz";
        sha1 = "f052a28da70e618917ef0a8ac34c1ae5a68286b3";
      };
    }
    {
      name = "psl-1.1.31.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/psl/-/psl-1.1.31.tgz";
        sha1 = "e9aa86d0101b5b105cbe93ac6b784cd547276184";
      };
    }
    {
      name = "public-encrypt-4.0.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/public-encrypt/-/public-encrypt-4.0.3.tgz";
        sha1 = "4fcc9d77a07e48ba7527e7cbe0de33d0701331e0";
      };
    }
    {
      name = "pump-2.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/pump/-/pump-2.0.1.tgz";
        sha1 = "12399add6e4cf7526d973cbc8b5ce2e2908b3909";
      };
    }
    {
      name = "pump-3.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/pump/-/pump-3.0.0.tgz";
        sha1 = "b4a2116815bde2f4e1ea602354e8c75565107a64";
      };
    }
    {
      name = "pumpify-1.5.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/pumpify/-/pumpify-1.5.1.tgz";
        sha1 = "36513be246ab27570b1a374a5ce278bfd74370ce";
      };
    }
    {
      name = "punycode-1.3.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/punycode/-/punycode-1.3.2.tgz";
        sha1 = "9653a036fb7c1ee42342f2325cceefea3926c48d";
      };
    }
    {
      name = "punycode-1.4.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/punycode/-/punycode-1.4.1.tgz";
        sha1 = "c0d5a63b2718800ad8e1eb0fa5269c84dd41845e";
      };
    }
    {
      name = "punycode-2.1.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/punycode/-/punycode-2.1.1.tgz";
        sha1 = "b58b010ac40c22c5657616c8d2c2c02c7bf479ec";
      };
    }
    {
      name = "qs-6.5.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/qs/-/qs-6.5.2.tgz";
        sha1 = "cb3ae806e8740444584ef154ce8ee98d403f3e36";
      };
    }
    {
      name = "querystring-es3-0.2.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/querystring-es3/-/querystring-es3-0.2.1.tgz";
        sha1 = "9ec61f79049875707d69414596fd907a4d711e73";
      };
    }
    {
      name = "querystring-0.2.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/querystring/-/querystring-0.2.0.tgz";
        sha1 = "b209849203bb25df820da756e747005878521620";
      };
    }
    {
      name = "quick-format-unescaped-3.0.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/quick-format-unescaped/-/quick-format-unescaped-3.0.2.tgz";
        sha1 = "0137e94d8fb37ffeb70040535111c378e75396fb";
      };
    }
    {
      name = "railroad-diagrams-1.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/railroad-diagrams/-/railroad-diagrams-1.0.0.tgz";
        sha1 = "eb7e6267548ddedfb899c1b90e57374559cddb7e";
      };
    }
    {
      name = "ramda-0.25.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/ramda/-/ramda-0.25.0.tgz";
        sha1 = "8fdf68231cffa90bc2f9460390a0cb74a29b29a9";
      };
    }
    {
      name = "randexp-0.4.6.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/randexp/-/randexp-0.4.6.tgz";
        sha1 = "e986ad5e5e31dae13ddd6f7b3019aa7c87f60ca3";
      };
    }
    {
      name = "randombytes-2.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/randombytes/-/randombytes-2.1.0.tgz";
        sha1 = "df6f84372f0270dc65cdf6291349ab7a473d4f2a";
      };
    }
    {
      name = "randomfill-1.0.4.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/randomfill/-/randomfill-1.0.4.tgz";
        sha1 = "c92196fc86ab42be983f1bf31778224931d61458";
      };
    }
    {
      name = "raw-body-2.4.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/raw-body/-/raw-body-2.4.1.tgz";
        sha1 = "30ac82f98bb5ae8c152e67149dac8d55153b168c";
      };
    }
    {
      name = "rc-1.2.8.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/rc/-/rc-1.2.8.tgz";
        sha1 = "cd924bf5200a075b83c188cd6b9e211b7fc0d3ed";
      };
    }
    {
      name = "react-is-16.8.6.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/react-is/-/react-is-16.8.6.tgz";
        sha1 = "5bbc1e2d29141c9fbdfed456343fe2bc430a6a16";
      };
    }
    {
      name = "read-all-stream-3.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/read-all-stream/-/read-all-stream-3.1.0.tgz";
        sha1 = "35c3e177f2078ef789ee4bfafa4373074eaef4fa";
      };
    }
    {
      name = "read-pkg-up-4.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/read-pkg-up/-/read-pkg-up-4.0.0.tgz";
        sha1 = "1b221c6088ba7799601c808f91161c66e58f8978";
      };
    }
    {
      name = "read-pkg-3.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/read-pkg/-/read-pkg-3.0.0.tgz";
        sha1 = "9cbc686978fee65d16c00e2b19c237fcf6e38389";
      };
    }
    {
      name = "readable-stream-2.3.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/readable-stream/-/readable-stream-2.3.3.tgz";
        sha1 = "368f2512d79f9d46fdfc71349ae7878bbc1eb95c";
      };
    }
    {
      name = "readable-stream-1.1.14.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/readable-stream/-/readable-stream-1.1.14.tgz";
        sha1 = "7cf4c54ef648e3813084c636dd2079e166c081d9";
      };
    }
    {
      name = "readable-stream-3.4.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/readable-stream/-/readable-stream-3.4.0.tgz";
        sha1 = "a51c26754658e0a3c21dbf59163bd45ba6f447fc";
      };
    }
    {
      name = "readable-stream-2.3.6.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/readable-stream/-/readable-stream-2.3.6.tgz";
        sha1 = "b11c27d88b8ff1fbe070643cf94b0c79ae1b0aaf";
      };
    }
    {
      name = "readable-stream-3.2.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/readable-stream/-/readable-stream-3.2.0.tgz";
        sha1 = "de17f229864c120a9f56945756e4f32c4045245d";
      };
    }
    {
      name = "readdirp-2.2.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/readdirp/-/readdirp-2.2.1.tgz";
        sha1 = "0e87622a3325aa33e892285caf8b4e846529a525";
      };
    }
    {
      name = "readline2-1.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/readline2/-/readline2-1.0.1.tgz";
        sha1 = "41059608ffc154757b715d9989d199ffbf372e35";
      };
    }
    {
      name = "realpath-native-1.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/realpath-native/-/realpath-native-1.1.0.tgz";
        sha1 = "2003294fea23fb0672f2476ebe22fcf498a2d65c";
      };
    }
    {
      name = "rechoir-0.6.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/rechoir/-/rechoir-0.6.2.tgz";
        sha1 = "85204b54dba82d5742e28c96756ef43af50e3384";
      };
    }
    {
      name = "regenerator-runtime-0.13.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/regenerator-runtime/-/regenerator-runtime-0.13.2.tgz";
        sha1 = "32e59c9a6fb9b1a4aff09b4930ca2d4477343447";
      };
    }
    {
      name = "regenerator-runtime-0.11.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/regenerator-runtime/-/regenerator-runtime-0.11.1.tgz";
        sha1 = "be05ad7f9bf7d22e056f9726cee5017fbf19e2e9";
      };
    }
    {
      name = "regenerator-runtime-0.9.6.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/regenerator-runtime/-/regenerator-runtime-0.9.6.tgz";
        sha1 = "d33eb95d0d2001a4be39659707c51b0cb71ce029";
      };
    }
    {
      name = "regex-not-1.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/regex-not/-/regex-not-1.0.0.tgz";
        sha1 = "42f83e39771622df826b02af176525d6a5f157f9";
      };
    }
    {
      name = "regex-not-1.0.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/regex-not/-/regex-not-1.0.2.tgz";
        sha1 = "1f4ece27e00b0b65e0247a6810e6a85d83a5752c";
      };
    }
    {
      name = "regexpp-2.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/regexpp/-/regexpp-2.0.1.tgz";
        sha1 = "8d19d31cf632482b589049f8281f93dbcba4d07f";
      };
    }
    {
      name = "registry-auth-token-3.3.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/registry-auth-token/-/registry-auth-token-3.3.2.tgz";
        sha1 = "851fd49038eecb586911115af845260eec983f20";
      };
    }
    {
      name = "registry-auth-token-3.4.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/registry-auth-token/-/registry-auth-token-3.4.0.tgz";
        sha1 = "d7446815433f5d5ed6431cd5dca21048f66b397e";
      };
    }
    {
      name = "registry-url-3.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/registry-url/-/registry-url-3.1.0.tgz";
        sha1 = "3d4ef870f73dde1d77f0cf9a381432444e174942";
      };
    }
    {
      name = "registry-url-5.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/registry-url/-/registry-url-5.1.0.tgz";
        sha1 = "e98334b50d5434b81136b44ec638d9c2009c5009";
      };
    }
    {
      name = "relaxed-json-1.0.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/relaxed-json/-/relaxed-json-1.0.3.tgz";
        sha1 = "eb2101ae0ee60e82267d95ed0ddf19a3604b8c1e";
      };
    }
    {
      name = "remove-trailing-separator-1.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/remove-trailing-separator/-/remove-trailing-separator-1.1.0.tgz";
        sha1 = "c24bce2a283adad5bc3f58e0d48249b92379d8ef";
      };
    }
    {
      name = "repeat-element-1.1.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/repeat-element/-/repeat-element-1.1.2.tgz";
        sha1 = "ef089a178d1483baae4d93eb98b4f9e4e11d990a";
      };
    }
    {
      name = "repeat-string-1.6.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/repeat-string/-/repeat-string-1.6.1.tgz";
        sha1 = "8dcae470e1c88abc2d600fff4a776286da75e637";
      };
    }
    {
      name = "request-promise-core-1.1.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/request-promise-core/-/request-promise-core-1.1.2.tgz";
        sha1 = "339f6aababcafdb31c799ff158700336301d3346";
      };
    }
    {
      name = "request-promise-native-1.0.7.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/request-promise-native/-/request-promise-native-1.0.7.tgz";
        sha1 = "a49868a624bdea5069f1251d0a836e0d89aa2c59";
      };
    }
    {
      name = "request-2.87.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/request/-/request-2.87.0.tgz";
        sha1 = "32f00235cd08d482b4d0d68db93a829c0ed5756e";
      };
    }
    {
      name = "request-2.88.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/request/-/request-2.88.0.tgz";
        sha1 = "9c2fca4f7d35b592efe57c7f0a55e81052124fef";
      };
    }
    {
      name = "require-directory-2.1.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/require-directory/-/require-directory-2.1.1.tgz";
        sha1 = "8c64ad5fd30dab1c976e2344ffe7f792a6a6df42";
      };
    }
    {
      name = "require-main-filename-1.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/require-main-filename/-/require-main-filename-1.0.1.tgz";
        sha1 = "97f717b69d48784f5f526a6c5aa8ffdda055a4d1";
      };
    }
    {
      name = "require-main-filename-2.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/require-main-filename/-/require-main-filename-2.0.0.tgz";
        sha1 = "d0b329ecc7cc0f61649f62215be69af54aa8989b";
      };
    }
    {
      name = "require-uncached-2.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/require-uncached/-/require-uncached-2.0.0.tgz";
        sha1 = "ad54186d77fecf07b63d82f8dd7aad448863b06d";
      };
    }
    {
      name = "require-uncached-1.0.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/require-uncached/-/require-uncached-1.0.3.tgz";
        sha1 = "4e0d56d6c9662fd31e43011c4b95aa49955421d3";
      };
    }
    {
      name = "resolve-cwd-2.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/resolve-cwd/-/resolve-cwd-2.0.0.tgz";
        sha1 = "00a9f7387556e27038eae232caa372a6a59b665a";
      };
    }
    {
      name = "resolve-dir-1.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/resolve-dir/-/resolve-dir-1.0.1.tgz";
        sha1 = "79a40644c362be82f26effe739c9bb5382046f43";
      };
    }
    {
      name = "resolve-from-1.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/resolve-from/-/resolve-from-1.0.1.tgz";
        sha1 = "26cbfe935d1aeeeabb29bc3fe5aeb01e93d44226";
      };
    }
    {
      name = "resolve-from-3.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/resolve-from/-/resolve-from-3.0.0.tgz";
        sha1 = "b22c7af7d9d6881bc8b6e653335eebcb0a188748";
      };
    }
    {
      name = "resolve-from-4.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/resolve-from/-/resolve-from-4.0.0.tgz";
        sha1 = "4abcd852ad32dd7baabfe9b40e00a36db5f392e6";
      };
    }
    {
      name = "resolve-url-0.2.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/resolve-url/-/resolve-url-0.2.1.tgz";
        sha1 = "2c637fe77c893afd2a663fe21aa9080068e2052a";
      };
    }
    {
      name = "resolve-1.1.7.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/resolve/-/resolve-1.1.7.tgz";
        sha1 = "203114d82ad2c5ed9e8e0411b3932875e889e97b";
      };
    }
    {
      name = "resolve-1.10.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/resolve/-/resolve-1.10.0.tgz";
        sha1 = "3bdaaeaf45cc07f375656dfd2e54ed0810b101ba";
      };
    }
    {
      name = "responselike-1.0.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/responselike/-/responselike-1.0.2.tgz";
        sha1 = "918720ef3b631c5642be068f15ade5a46f4ba1e7";
      };
    }
    {
      name = "restore-cursor-1.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/restore-cursor/-/restore-cursor-1.0.1.tgz";
        sha1 = "34661f46886327fed2991479152252df92daa541";
      };
    }
    {
      name = "restore-cursor-2.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/restore-cursor/-/restore-cursor-2.0.0.tgz";
        sha1 = "9f7ee287f82fd326d4fd162923d62129eee0dfaf";
      };
    }
    {
      name = "ret-0.1.15.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/ret/-/ret-0.1.15.tgz";
        sha1 = "b8a4825d5bdb1fc3f6f53c2bc33f81388681c7bc";
      };
    }
    {
      name = "rimraf-2.6.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/rimraf/-/rimraf-2.6.3.tgz";
        sha1 = "b2d104fe0d8fb27cf9e0a1cda8262dd3833c6cab";
      };
    }
    {
      name = "rimraf-2.4.5.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/rimraf/-/rimraf-2.4.5.tgz";
        sha1 = "ee710ce5d93a8fdb856fb5ea8ff0e2d75934b2da";
      };
    }
    {
      name = "ripemd160-2.0.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/ripemd160/-/ripemd160-2.0.2.tgz";
        sha1 = "a1c1a6f624751577ba5d07914cbc92850585890c";
      };
    }
    {
      name = "rss-parser-3.7.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/rss-parser/-/rss-parser-3.7.2.tgz";
        sha1 = "9f5b7d4944d4f7a190b469e31a8353aedb17c052";
      };
    }
    {
      name = "rsvp-4.8.4.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/rsvp/-/rsvp-4.8.4.tgz";
        sha1 = "b50e6b34583f3dd89329a2f23a8a2be072845911";
      };
    }
    {
      name = "run-async-0.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/run-async/-/run-async-0.1.0.tgz";
        sha1 = "c8ad4a5e110661e402a7d21b530e009f25f8e389";
      };
    }
    {
      name = "run-async-2.3.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/run-async/-/run-async-2.3.0.tgz";
        sha1 = "0371ab4ae0bdd720d4166d7dfda64ff7a445a6c0";
      };
    }
    {
      name = "run-queue-1.0.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/run-queue/-/run-queue-1.0.3.tgz";
        sha1 = "e848396f057d223f24386924618e25694161ec47";
      };
    }
    {
      name = "rx-lite-3.1.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/rx-lite/-/rx-lite-3.1.2.tgz";
        sha1 = "19ce502ca572665f3b647b10939f97fd1615f102";
      };
    }
    {
      name = "rxjs-6.4.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/rxjs/-/rxjs-6.4.0.tgz";
        sha1 = "f3bb0fe7bda7fb69deac0c16f17b50b0b8790504";
      };
    }
    {
      name = "safe-buffer-5.1.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/safe-buffer/-/safe-buffer-5.1.1.tgz";
        sha1 = "893312af69b2123def71f57889001671eeb2c853";
      };
    }
    {
      name = "safe-buffer-5.1.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/safe-buffer/-/safe-buffer-5.1.2.tgz";
        sha1 = "991ec69d296e0313747d59bdfd2b745c35f8828d";
      };
    }
    {
      name = "safe-json-stringify-1.2.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/safe-json-stringify/-/safe-json-stringify-1.2.0.tgz";
        sha1 = "356e44bc98f1f93ce45df14bcd7c01cda86e0afd";
      };
    }
    {
      name = "safe-regex-1.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/safe-regex/-/safe-regex-1.1.0.tgz";
        sha1 = "40a3669f3b077d1e943d44629e157dd48023bf2e";
      };
    }
    {
      name = "safer-buffer-2.1.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/safer-buffer/-/safer-buffer-2.1.2.tgz";
        sha1 = "44fa161b0187b9549dd84bb91802f9bd8385cd6a";
      };
    }
    {
      name = "sane-4.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/sane/-/sane-4.1.0.tgz";
        sha1 = "ed881fd922733a6c461bc189dc2b6c006f3ffded";
      };
    }
    {
      name = "sax-1.2.4.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/sax/-/sax-1.2.4.tgz";
        sha1 = "2816234e2378bddc4e5354fab5caa895df7100d9";
      };
    }
    {
      name = "schema-utils-1.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/schema-utils/-/schema-utils-1.0.0.tgz";
        sha1 = "0b79a93204d7b600d4b2850d1f66c2a34951c770";
      };
    }
    {
      name = "secure-keys-1.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/secure-keys/-/secure-keys-1.0.0.tgz";
        sha1 = "f0c82d98a3b139a8776a8808050b824431087fca";
      };
    }
    {
      name = "selenium-webdriver-4.0.0-alpha.4.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/selenium-webdriver/-/selenium-webdriver-4.0.0-alpha.4.tgz";
        sha1 = "73694490e02c941d9d0bf7a36f7c49beb9372512";
      };
    }
    {
      name = "semver-compare-1.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/semver-compare/-/semver-compare-1.0.0.tgz";
        sha1 = "0dee216a1c941ab37e9efb1788f6afc5ff5537fc";
      };
    }
    {
      name = "semver-diff-2.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/semver-diff/-/semver-diff-2.1.0.tgz";
        sha1 = "4bbb8437c8d37e4b0cf1a68fd726ec6d645d6d36";
      };
    }
    {
      name = "semver-5.6.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/semver/-/semver-5.6.0.tgz";
        sha1 = "7e74256fbaa49c75aa7c7a205cc22799cac80004";
      };
    }
    {
      name = "semver-6.1.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/semver/-/semver-6.1.1.tgz";
        sha1 = "53f53da9b30b2103cd4f15eab3a18ecbcb210c9b";
      };
    }
    {
      name = "semver-6.2.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/semver/-/semver-6.2.0.tgz";
        sha1 = "4d813d9590aaf8a9192693d6c85b9344de5901db";
      };
    }
    {
      name = "serialize-javascript-1.7.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/serialize-javascript/-/serialize-javascript-1.7.0.tgz";
        sha1 = "d6e0dfb2a3832a8c94468e6eb1db97e55a192a65";
      };
    }
    {
      name = "set-blocking-2.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/set-blocking/-/set-blocking-2.0.0.tgz";
        sha1 = "045f9782d011ae9a6803ddd382b24392b3d890f7";
      };
    }
    {
      name = "set-getter-0.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/set-getter/-/set-getter-0.1.0.tgz";
        sha1 = "d769c182c9d5a51f409145f2fba82e5e86e80376";
      };
    }
    {
      name = "set-immediate-shim-1.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/set-immediate-shim/-/set-immediate-shim-1.0.1.tgz";
        sha1 = "4b2b1b27eb808a9f8dcc481a58e5e56f599f3f61";
      };
    }
    {
      name = "set-value-0.4.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/set-value/-/set-value-0.4.3.tgz";
        sha1 = "7db08f9d3d22dc7f78e53af3c3bf4666ecdfccf1";
      };
    }
    {
      name = "set-value-2.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/set-value/-/set-value-2.0.0.tgz";
        sha1 = "71ae4a88f0feefbbf52d1ea604f3fb315ebb6274";
      };
    }
    {
      name = "setimmediate-1.0.5.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/setimmediate/-/setimmediate-1.0.5.tgz";
        sha1 = "290cbb232e306942d7d7ea9b83732ab7856f8285";
      };
    }
    {
      name = "setprototypeof-1.1.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/setprototypeof/-/setprototypeof-1.1.1.tgz";
        sha1 = "7e95acb24aa92f5885e0abef5ba131330d4ae683";
      };
    }
    {
      name = "sha.js-2.4.11.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/sha.js/-/sha.js-2.4.11.tgz";
        sha1 = "37a5cf0b81ecbc6943de109ba2960d1b26584ae7";
      };
    }
    {
      name = "shallow-clone-0.1.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/shallow-clone/-/shallow-clone-0.1.2.tgz";
        sha1 = "5909e874ba77106d73ac414cfec1ffca87d97060";
      };
    }
    {
      name = "shared-git-hooks-1.2.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/shared-git-hooks/-/shared-git-hooks-1.2.1.tgz";
        sha1 = "f17f59677cbf8fc3ee8ee71934a9de70a0920cce";
      };
    }
    {
      name = "shebang-command-1.2.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/shebang-command/-/shebang-command-1.2.0.tgz";
        sha1 = "44aac65b695b03398968c39f363fee5deafdf1ea";
      };
    }
    {
      name = "shebang-regex-1.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/shebang-regex/-/shebang-regex-1.0.0.tgz";
        sha1 = "da42f49740c0b42db2ca9728571cb190c98efea3";
      };
    }
    {
      name = "shell-quote-1.6.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/shell-quote/-/shell-quote-1.6.1.tgz";
        sha1 = "f4781949cce402697127430ea3b3c5476f481767";
      };
    }
    {
      name = "shelljs-0.7.7.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/shelljs/-/shelljs-0.7.7.tgz";
        sha1 = "b2f5c77ef97148f4b4f6e22682e10bba8667cff1";
      };
    }
    {
      name = "shelljs-0.7.8.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/shelljs/-/shelljs-0.7.8.tgz";
        sha1 = "decbcf874b0d1e5fb72e14b164a9683048e9acb3";
      };
    }
    {
      name = "shellwords-0.1.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/shellwords/-/shellwords-0.1.1.tgz";
        sha1 = "d6b9181c1a48d397324c84871efbcfc73fc0654b";
      };
    }
    {
      name = "sign-addon-0.3.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/sign-addon/-/sign-addon-0.3.1.tgz";
        sha1 = "7798ba994c8cd803a64a11a12a377ae6f714565e";
      };
    }
    {
      name = "signal-exit-3.0.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/signal-exit/-/signal-exit-3.0.2.tgz";
        sha1 = "b5fdc08f1287ea1178628e415e25132b73646c6d";
      };
    }
    {
      name = "sisteransi-1.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/sisteransi/-/sisteransi-1.0.0.tgz";
        sha1 = "77d9622ff909080f1c19e5f4a1df0c1b0a27b88c";
      };
    }
    {
      name = "slash-1.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/slash/-/slash-1.0.0.tgz";
        sha1 = "c41f2f6c39fc16d1cd17ad4b5d896114ae470d55";
      };
    }
    {
      name = "slash-2.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/slash/-/slash-2.0.0.tgz";
        sha1 = "de552851a1759df3a8f206535442f5ec4ddeab44";
      };
    }
    {
      name = "slice-ansi-0.0.4.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/slice-ansi/-/slice-ansi-0.0.4.tgz";
        sha1 = "edbf8903f66f7ce2f8eafd6ceed65e264c831b35";
      };
    }
    {
      name = "slice-ansi-2.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/slice-ansi/-/slice-ansi-2.1.0.tgz";
        sha1 = "cacd7693461a637a5788d92a7dd4fba068e81636";
      };
    }
    {
      name = "smart-buffer-4.0.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/smart-buffer/-/smart-buffer-4.0.2.tgz";
        sha1 = "5207858c3815cc69110703c6b94e46c15634395d";
      };
    }
    {
      name = "snapdragon-node-2.1.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/snapdragon-node/-/snapdragon-node-2.1.1.tgz";
        sha1 = "6c175f86ff14bdb0724563e8f3c1b021a286853b";
      };
    }
    {
      name = "snapdragon-util-3.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/snapdragon-util/-/snapdragon-util-3.0.1.tgz";
        sha1 = "f956479486f2acd79700693f6f7b805e45ab56e2";
      };
    }
    {
      name = "snapdragon-0.8.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/snapdragon/-/snapdragon-0.8.1.tgz";
        sha1 = "e12b5487faded3e3dea0ac91e9400bf75b401370";
      };
    }
    {
      name = "snyk-config-2.2.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/snyk-config/-/snyk-config-2.2.1.tgz";
        sha1 = "bdacf79193158ec659bdcc4194140fd8d3772f9d";
      };
    }
    {
      name = "snyk-docker-plugin-1.25.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/snyk-docker-plugin/-/snyk-docker-plugin-1.25.1.tgz";
        sha1 = "3f97dda88adfac2e1938151372d07905767bc8a1";
      };
    }
    {
      name = "snyk-go-parser-1.3.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/snyk-go-parser/-/snyk-go-parser-1.3.1.tgz";
        sha1 = "427387507578baf008a3e73828e0e53ed8c796f3";
      };
    }
    {
      name = "snyk-go-plugin-1.10.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/snyk-go-plugin/-/snyk-go-plugin-1.10.2.tgz";
        sha1 = "520ace2d84df4d3c5088d2cbc776ef2d5ac0f236";
      };
    }
    {
      name = "snyk-gradle-plugin-2.12.5.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/snyk-gradle-plugin/-/snyk-gradle-plugin-2.12.5.tgz";
        sha1 = "6da1c9135b4cee2d6cd32653e569a1f56977d173";
      };
    }
    {
      name = "snyk-module-1.9.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/snyk-module/-/snyk-module-1.9.1.tgz";
        sha1 = "b2a78f736600b0ab680f1703466ed7309c980804";
      };
    }
    {
      name = "snyk-mvn-plugin-2.3.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/snyk-mvn-plugin/-/snyk-mvn-plugin-2.3.0.tgz";
        sha1 = "a76cfc0041ecc4333f2c6f6f72138f1e4621da24";
      };
    }
    {
      name = "snyk-nodejs-lockfile-parser-1.13.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/snyk-nodejs-lockfile-parser/-/snyk-nodejs-lockfile-parser-1.13.0.tgz";
        sha1 = "f3c81fd9a1870fdb5f71370e510d760326f3ee21";
      };
    }
    {
      name = "snyk-nuget-plugin-1.10.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/snyk-nuget-plugin/-/snyk-nuget-plugin-1.10.0.tgz";
        sha1 = "58aba49e37ca4ac99afcecb3d3c3917188daad84";
      };
    }
    {
      name = "snyk-paket-parser-1.4.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/snyk-paket-parser/-/snyk-paket-parser-1.4.3.tgz";
        sha1 = "380ae8c5fb598f81c110f6b645c728c9cc50b7a5";
      };
    }
    {
      name = "snyk-php-plugin-1.6.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/snyk-php-plugin/-/snyk-php-plugin-1.6.2.tgz";
        sha1 = "f5ad6f081d2afc6dfc496cbce68165bdcd2e87ed";
      };
    }
    {
      name = "snyk-policy-1.13.5.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/snyk-policy/-/snyk-policy-1.13.5.tgz";
        sha1 = "c5cf262f759879a65ab0810dd58d59c8ec7e9e47";
      };
    }
    {
      name = "snyk-python-plugin-1.10.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/snyk-python-plugin/-/snyk-python-plugin-1.10.2.tgz";
        sha1 = "e89548a47d4cfe98351604ed8a3372bfd9fbebbd";
      };
    }
    {
      name = "snyk-resolve-deps-4.0.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/snyk-resolve-deps/-/snyk-resolve-deps-4.0.3.tgz";
        sha1 = "f44389430c3712af8f574952e9ff188c6448dbd7";
      };
    }
    {
      name = "snyk-resolve-1.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/snyk-resolve/-/snyk-resolve-1.0.1.tgz";
        sha1 = "eaa4a275cf7e2b579f18da5b188fe601b8eed9ab";
      };
    }
    {
      name = "snyk-sbt-plugin-2.5.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/snyk-sbt-plugin/-/snyk-sbt-plugin-2.5.2.tgz";
        sha1 = "d04ef61b83e34a8e835d5045ffc3e5560b9abbe7";
      };
    }
    {
      name = "snyk-tree-1.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/snyk-tree/-/snyk-tree-1.0.0.tgz";
        sha1 = "0fb73176dbf32e782f19100294160448f9111cc8";
      };
    }
    {
      name = "snyk-try-require-1.3.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/snyk-try-require/-/snyk-try-require-1.3.1.tgz";
        sha1 = "6e026f92e64af7fcccea1ee53d524841e418a212";
      };
    }
    {
      name = "snyk-1.189.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/snyk/-/snyk-1.189.0.tgz";
        sha1 = "62c7e84f83231c60d318841cdbb49efa4928a351";
      };
    }
    {
      name = "socks-proxy-agent-4.0.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/socks-proxy-agent/-/socks-proxy-agent-4.0.2.tgz";
        sha1 = "3c8991f3145b2799e70e11bd5fbc8b1963116386";
      };
    }
    {
      name = "socks-2.3.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/socks/-/socks-2.3.2.tgz";
        sha1 = "ade388e9e6d87fdb11649c15746c578922a5883e";
      };
    }
    {
      name = "sonic-boom-0.7.4.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/sonic-boom/-/sonic-boom-0.7.4.tgz";
        sha1 = "dc1740a900cf8646471f6ac1f4933a5c66c0ca60";
      };
    }
    {
      name = "source-list-map-2.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/source-list-map/-/source-list-map-2.0.1.tgz";
        sha1 = "3993bd873bfc48479cca9ea3a547835c7c154b34";
      };
    }
    {
      name = "source-map-loader-0.2.4.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/source-map-loader/-/source-map-loader-0.2.4.tgz";
        sha1 = "c18b0dc6e23bf66f6792437557c569a11e072271";
      };
    }
    {
      name = "source-map-resolve-0.5.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/source-map-resolve/-/source-map-resolve-0.5.2.tgz";
        sha1 = "72e2cc34095543e43b2c62b2c4c10d4a9054f259";
      };
    }
    {
      name = "source-map-support-0.4.6.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/source-map-support/-/source-map-support-0.4.6.tgz";
        sha1 = "32552aa64b458392a85eab3b0b5ee61527167aeb";
      };
    }
    {
      name = "source-map-support-0.5.12.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/source-map-support/-/source-map-support-0.5.12.tgz";
        sha1 = "b4f3b10d51857a5af0138d3ce8003b201613d599";
      };
    }
    {
      name = "source-map-url-0.4.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/source-map-url/-/source-map-url-0.4.0.tgz";
        sha1 = "3e935d7ddd73631b97659956d55128e87b5084a3";
      };
    }
    {
      name = "source-map-0.5.7.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/source-map/-/source-map-0.5.7.tgz";
        sha1 = "8a039d2d1021d22d1ea14c80d8ea468ba2ef3fcc";
      };
    }
    {
      name = "source-map-0.6.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/source-map/-/source-map-0.6.1.tgz";
        sha1 = "74722af32e9614e9c287a8d0bbde48b5e2f1a263";
      };
    }
    {
      name = "spawn-sync-1.0.15.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/spawn-sync/-/spawn-sync-1.0.15.tgz";
        sha1 = "b00799557eb7fb0c8376c29d44e8a1ea67e57476";
      };
    }
    {
      name = "spdx-correct-3.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/spdx-correct/-/spdx-correct-3.1.0.tgz";
        sha1 = "fb83e504445268f154b074e218c87c003cd31df4";
      };
    }
    {
      name = "spdx-exceptions-2.2.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/spdx-exceptions/-/spdx-exceptions-2.2.0.tgz";
        sha1 = "2ea450aee74f2a89bfb94519c07fcd6f41322977";
      };
    }
    {
      name = "spdx-expression-parse-3.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/spdx-expression-parse/-/spdx-expression-parse-3.0.0.tgz";
        sha1 = "99e119b7a5da00e05491c9fa338b7904823b41d0";
      };
    }
    {
      name = "spdx-license-ids-3.0.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/spdx-license-ids/-/spdx-license-ids-3.0.3.tgz";
        sha1 = "81c0ce8f21474756148bbb5f3bfc0f36bf15d76e";
      };
    }
    {
      name = "split-string-3.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/split-string/-/split-string-3.1.0.tgz";
        sha1 = "7cb09dda3a86585705c64b39a6466038682e8fe2";
      };
    }
    {
      name = "split-0.3.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/split/-/split-0.3.3.tgz";
        sha1 = "cd0eea5e63a211dfff7eb0f091c4133e2d0dd28f";
      };
    }
    {
      name = "sprintf-js-1.0.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/sprintf-js/-/sprintf-js-1.0.3.tgz";
        sha1 = "04e6926f662895354f3dd015203633b857297e2c";
      };
    }
    {
      name = "sshpk-1.16.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/sshpk/-/sshpk-1.16.1.tgz";
        sha1 = "fb661c0bef29b39db40769ee39fa70093d6f6877";
      };
    }
    {
      name = "ssri-6.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/ssri/-/ssri-6.0.1.tgz";
        sha1 = "2a3c41b28dd45b62b63676ecb74001265ae9edd8";
      };
    }
    {
      name = "stack-utils-1.0.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/stack-utils/-/stack-utils-1.0.2.tgz";
        sha1 = "33eba3897788558bebfc2db059dc158ec36cebb8";
      };
    }
    {
      name = "static-extend-0.1.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/static-extend/-/static-extend-0.1.2.tgz";
        sha1 = "60809c39cbff55337226fd5e0b520f341f1fb5c6";
      };
    }
    {
      name = "statuses-1.5.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/statuses/-/statuses-1.5.0.tgz";
        sha1 = "161c7dac177659fd9811f43771fa99381478628c";
      };
    }
    {
      name = "stealthy-require-1.1.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/stealthy-require/-/stealthy-require-1.1.1.tgz";
        sha1 = "35b09875b4ff49f26a777e509b3090a3226bf24b";
      };
    }
    {
      name = "stream-browserify-2.0.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/stream-browserify/-/stream-browserify-2.0.2.tgz";
        sha1 = "87521d38a44aa7ee91ce1cd2a47df0cb49dd660b";
      };
    }
    {
      name = "stream-each-1.2.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/stream-each/-/stream-each-1.2.3.tgz";
        sha1 = "ebe27a0c389b04fbcc233642952e10731afa9bae";
      };
    }
    {
      name = "stream-http-2.8.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/stream-http/-/stream-http-2.8.3.tgz";
        sha1 = "b2d242469288a5a27ec4fe8933acf623de6514fc";
      };
    }
    {
      name = "stream-parser-0.3.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/stream-parser/-/stream-parser-0.3.1.tgz";
        sha1 = "1618548694420021a1182ff0af1911c129761773";
      };
    }
    {
      name = "stream-shift-1.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/stream-shift/-/stream-shift-1.0.0.tgz";
        sha1 = "d5c752825e5367e786f78e18e445ea223a155952";
      };
    }
    {
      name = "stream-to-array-2.3.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/stream-to-array/-/stream-to-array-2.3.0.tgz";
        sha1 = "bbf6b39f5f43ec30bc71babcb37557acecf34353";
      };
    }
    {
      name = "stream-to-promise-2.2.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/stream-to-promise/-/stream-to-promise-2.2.0.tgz";
        sha1 = "b1edb2e1c8cb11289d1b503c08d3f2aef51e650f";
      };
    }
    {
      name = "string-length-2.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/string-length/-/string-length-2.0.0.tgz";
        sha1 = "d40dbb686a3ace960c1cffca562bf2c45f8363ed";
      };
    }
    {
      name = "string-width-1.0.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/string-width/-/string-width-1.0.2.tgz";
        sha1 = "118bdf5b8cdc51a2a7e70d211e07e2b0b9b107d3";
      };
    }
    {
      name = "string-width-2.1.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/string-width/-/string-width-2.1.1.tgz";
        sha1 = "ab93f27a8dc13d28cac815c462143a6d9012ae9e";
      };
    }
    {
      name = "string-width-3.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/string-width/-/string-width-3.0.0.tgz";
        sha1 = "5a1690a57cc78211fffd9bf24bbe24d090604eb1";
      };
    }
    {
      name = "string-width-3.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/string-width/-/string-width-3.1.0.tgz";
        sha1 = "22767be21b62af1081574306f69ac51b62203961";
      };
    }
    {
      name = "string_decoder-1.0.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/string_decoder/-/string_decoder-1.0.3.tgz";
        sha1 = "0fc67d7c141825de94282dd536bec6b9bce860ab";
      };
    }
    {
      name = "string_decoder-1.2.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/string_decoder/-/string_decoder-1.2.0.tgz";
        sha1 = "fe86e738b19544afe70469243b2a1ee9240eae8d";
      };
    }
    {
      name = "string_decoder-0.10.31.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/string_decoder/-/string_decoder-0.10.31.tgz";
        sha1 = "62e203bc41766c6c28c9fc84301dab1c5310fa94";
      };
    }
    {
      name = "string_decoder-1.1.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/string_decoder/-/string_decoder-1.1.1.tgz";
        sha1 = "9cf1611ba62685d7030ae9e4ba34149c3af03fc8";
      };
    }
    {
      name = "strip-ansi-3.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/strip-ansi/-/strip-ansi-3.0.1.tgz";
        sha1 = "6a385fb8853d952d5ff05d0e8aaf94278dc63dcf";
      };
    }
    {
      name = "strip-ansi-4.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/strip-ansi/-/strip-ansi-4.0.0.tgz";
        sha1 = "a8479022eb1ac368a871389b635262c505ee368f";
      };
    }
    {
      name = "strip-ansi-5.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/strip-ansi/-/strip-ansi-5.0.0.tgz";
        sha1 = "f78f68b5d0866c20b2c9b8c61b5298508dc8756f";
      };
    }
    {
      name = "strip-ansi-5.2.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/strip-ansi/-/strip-ansi-5.2.0.tgz";
        sha1 = "8c9a536feb6afc962bdfa5b104a5091c1ad9c0ae";
      };
    }
    {
      name = "strip-ansi-0.1.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/strip-ansi/-/strip-ansi-0.1.1.tgz";
        sha1 = "39e8a98d044d150660abe4a6808acf70bb7bc991";
      };
    }
    {
      name = "strip-bom-buf-2.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/strip-bom-buf/-/strip-bom-buf-2.0.0.tgz";
        sha1 = "ff9c223937f8e7154b77e9de9bde094186885c15";
      };
    }
    {
      name = "strip-bom-stream-4.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/strip-bom-stream/-/strip-bom-stream-4.0.0.tgz";
        sha1 = "4d21a651e723ef743a0a8b0d4534471805330cbb";
      };
    }
    {
      name = "strip-bom-3.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/strip-bom/-/strip-bom-3.0.0.tgz";
        sha1 = "2334c18e9c759f7bdd56fdef7e9ae3d588e68ed3";
      };
    }
    {
      name = "strip-eof-1.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/strip-eof/-/strip-eof-1.0.0.tgz";
        sha1 = "bb43ff5598a6eb05d89b59fcd129c983313606bf";
      };
    }
    {
      name = "strip-json-comments-3.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/strip-json-comments/-/strip-json-comments-3.0.1.tgz";
        sha1 = "85713975a91fb87bf1b305cca77395e40d2a64a7";
      };
    }
    {
      name = "strip-json-comments-2.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/strip-json-comments/-/strip-json-comments-2.0.1.tgz";
        sha1 = "3c531942e908c2697c0ec344858c286c7ca0a60a";
      };
    }
    {
      name = "supports-color-6.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/supports-color/-/supports-color-6.1.0.tgz";
        sha1 = "0764abc69c63d5ac842dd4867e8d025e880df8f3";
      };
    }
    {
      name = "supports-color-2.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/supports-color/-/supports-color-2.0.0.tgz";
        sha1 = "535d045ce6b6363fa40117084629995e9df324c7";
      };
    }
    {
      name = "supports-color-5.5.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/supports-color/-/supports-color-5.5.0.tgz";
        sha1 = "e2e69a44ac8772f78a1ec0b35b689df6530efc8f";
      };
    }
    {
      name = "symbol-tree-3.2.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/symbol-tree/-/symbol-tree-3.2.2.tgz";
        sha1 = "ae27db38f660a7ae2e1c3b7d1bc290819b8519e6";
      };
    }
    {
      name = "table-3.8.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/table/-/table-3.8.3.tgz";
        sha1 = "2bbc542f0fda9861a755d3947fefd8b3f513855f";
      };
    }
    {
      name = "table-5.4.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/table/-/table-5.4.1.tgz";
        sha1 = "0691ae2ebe8259858efb63e550b6d5f9300171e8";
      };
    }
    {
      name = "tapable-1.1.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/tapable/-/tapable-1.1.3.tgz";
        sha1 = "a1fccc06b58db61fd7a45da2da44f5f3a3e67ba2";
      };
    }
    {
      name = "tar-stream-1.6.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/tar-stream/-/tar-stream-1.6.2.tgz";
        sha1 = "8ea55dab37972253d9a9af90fdcd559ae435c555";
      };
    }
    {
      name = "tar-4.4.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/tar/-/tar-4.4.2.tgz";
        sha1 = "60685211ba46b38847b1ae7ee1a24d744a2cd462";
      };
    }
    {
      name = "tar-4.4.8.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/tar/-/tar-4.4.8.tgz";
        sha1 = "b19eec3fde2a96e64666df9fdb40c5ca1bc3747d";
      };
    }
    {
      name = "temp-dir-1.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/temp-dir/-/temp-dir-1.0.0.tgz";
        sha1 = "0a7c0ea26d3a39afa7e0ebea9c1fc0bc4daa011d";
      };
    }
    {
      name = "tempfile-2.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/tempfile/-/tempfile-2.0.0.tgz";
        sha1 = "6b0446856a9b1114d1856ffcbe509cccb0977265";
      };
    }
    {
      name = "term-size-1.2.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/term-size/-/term-size-1.2.0.tgz";
        sha1 = "458b83887f288fc56d6fffbfad262e26638efa69";
      };
    }
    {
      name = "terser-webpack-plugin-1.2.4.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/terser-webpack-plugin/-/terser-webpack-plugin-1.2.4.tgz";
        sha1 = "56f87540c28dd5265753431009388f473b5abba3";
      };
    }
    {
      name = "terser-3.17.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/terser/-/terser-3.17.0.tgz";
        sha1 = "f88ffbeda0deb5637f9d24b0da66f4e15ab10cb2";
      };
    }
    {
      name = "test-exclude-5.2.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/test-exclude/-/test-exclude-5.2.3.tgz";
        sha1 = "c3d3e1e311eb7ee405e092dac10aefd09091eac0";
      };
    }
    {
      name = "text-table-0.2.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/text-table/-/text-table-0.2.0.tgz";
        sha1 = "7f5ee823ae805207c00af2df4a84ec3fcfa570b4";
      };
    }
    {
      name = "then-fs-2.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/then-fs/-/then-fs-2.0.0.tgz";
        sha1 = "72f792dd9d31705a91ae19ebfcf8b3f968c81da2";
      };
    }
    {
      name = "thenify-all-1.6.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/thenify-all/-/thenify-all-1.6.0.tgz";
        sha1 = "1a1918d402d8fc3f98fbf234db0bcc8cc10e9726";
      };
    }
    {
      name = "thenify-3.3.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/thenify/-/thenify-3.3.0.tgz";
        sha1 = "e69e38a1babe969b0108207978b9f62b88604839";
      };
    }
    {
      name = "throat-4.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/throat/-/throat-4.1.0.tgz";
        sha1 = "89037cbc92c56ab18926e6ba4cbb200e15672a6a";
      };
    }
    {
      name = "through2-2.0.5.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/through2/-/through2-2.0.5.tgz";
        sha1 = "01c1e39eb31d07cb7d03a96a70823260b23132cd";
      };
    }
    {
      name = "through-2.3.8.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/through/-/through-2.3.8.tgz";
        sha1 = "0dd4c9ffaabc357960b1b724115d7e0e86a2e1f5";
      };
    }
    {
      name = "thunkify-2.1.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/thunkify/-/thunkify-2.1.2.tgz";
        sha1 = "faa0e9d230c51acc95ca13a361ac05ca7e04553d";
      };
    }
    {
      name = "timed-out-2.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/timed-out/-/timed-out-2.0.0.tgz";
        sha1 = "f38b0ae81d3747d628001f41dafc652ace671c0a";
      };
    }
    {
      name = "timed-out-4.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/timed-out/-/timed-out-4.0.1.tgz";
        sha1 = "f32eacac5a175bea25d7fab565ab3ed8741ef56f";
      };
    }
    {
      name = "timers-browserify-2.0.10.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/timers-browserify/-/timers-browserify-2.0.10.tgz";
        sha1 = "1d28e3d2aadf1d5a5996c4e9f95601cd053480ae";
      };
    }
    {
      name = "tmp-0.0.30.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/tmp/-/tmp-0.0.30.tgz";
        sha1 = "72419d4a8be7d6ce75148fd8b324e593a711c2ed";
      };
    }
    {
      name = "tmp-0.0.33.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/tmp/-/tmp-0.0.33.tgz";
        sha1 = "6d34335889768d21b2bcda0aa277ced3b1bfadf9";
      };
    }
    {
      name = "tmp-0.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/tmp/-/tmp-0.1.0.tgz";
        sha1 = "ee434a4e22543082e294ba6201dcc6eafefa2877";
      };
    }
    {
      name = "tmpl-1.0.4.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/tmpl/-/tmpl-1.0.4.tgz";
        sha1 = "23640dd7b42d00433911140820e5cf440e521dd1";
      };
    }
    {
      name = "to-arraybuffer-1.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/to-arraybuffer/-/to-arraybuffer-1.0.1.tgz";
        sha1 = "7d229b1fcc637e466ca081180836a7aabff83f43";
      };
    }
    {
      name = "to-buffer-1.1.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/to-buffer/-/to-buffer-1.1.1.tgz";
        sha1 = "493bd48f62d7c43fcded313a03dcadb2e1213a80";
      };
    }
    {
      name = "to-fast-properties-2.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/to-fast-properties/-/to-fast-properties-2.0.0.tgz";
        sha1 = "dc5e698cbd079265bc73e0377681a4e4e83f616e";
      };
    }
    {
      name = "to-object-path-0.3.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/to-object-path/-/to-object-path-0.3.0.tgz";
        sha1 = "297588b7b0e7e0ac08e04e672f85c1f4999e17af";
      };
    }
    {
      name = "to-readable-stream-1.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/to-readable-stream/-/to-readable-stream-1.0.0.tgz";
        sha1 = "ce0aa0c2f3df6adf852efb404a783e77c0475771";
      };
    }
    {
      name = "to-regex-range-2.1.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/to-regex-range/-/to-regex-range-2.1.1.tgz";
        sha1 = "7c80c17b9dfebe599e27367e0d4dd5590141db38";
      };
    }
    {
      name = "to-regex-3.0.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/to-regex/-/to-regex-3.0.2.tgz";
        sha1 = "13cfdd9b336552f30b51f33a8ae1b42a7a7599ce";
      };
    }
    {
      name = "toidentifier-1.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/toidentifier/-/toidentifier-1.0.0.tgz";
        sha1 = "7e1be3470f1e77948bc43d94a3c8f4d7752ba553";
      };
    }
    {
      name = "toml-3.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/toml/-/toml-3.0.0.tgz";
        sha1 = "342160f1af1904ec9d204d03a5d61222d762c5ee";
      };
    }
    {
      name = "tosource-1.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/tosource/-/tosource-1.0.0.tgz";
        sha1 = "42d88dd116618bcf00d6106dd5446f3427902ff1";
      };
    }
    {
      name = "tough-cookie-2.5.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/tough-cookie/-/tough-cookie-2.5.0.tgz";
        sha1 = "cd9fb2a0aa1d5a12b473bd9fb96fa3dcff65ade2";
      };
    }
    {
      name = "tough-cookie-2.3.4.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/tough-cookie/-/tough-cookie-2.3.4.tgz";
        sha1 = "ec60cee38ac675063ffc97a5c18970578ee83655";
      };
    }
    {
      name = "tough-cookie-2.4.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/tough-cookie/-/tough-cookie-2.4.3.tgz";
        sha1 = "53f36da3f47783b0925afa06ff9f3b165280f781";
      };
    }
    {
      name = "tr46-1.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/tr46/-/tr46-1.0.1.tgz";
        sha1 = "a8b13fd6bfd2489519674ccde55ba3693b706d09";
      };
    }
    {
      name = "traverse-0.4.6.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/traverse/-/traverse-0.4.6.tgz";
        sha1 = "d04b2280e4c792a5815429ef7b8b60c64c9ccc34";
      };
    }
    {
      name = "tree-kill-1.2.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/tree-kill/-/tree-kill-1.2.1.tgz";
        sha1 = "5398f374e2f292b9dcc7b2e71e30a5c3bb6c743a";
      };
    }
    {
      name = "trim-right-1.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/trim-right/-/trim-right-1.0.1.tgz";
        sha1 = "cb2e1203067e0c8de1f614094b9fe45704ea6003";
      };
    }
    {
      name = "ts-jest-24.0.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/ts-jest/-/ts-jest-24.0.2.tgz";
        sha1 = "8dde6cece97c31c03e80e474c749753ffd27194d";
      };
    }
    {
      name = "ts-node-8.3.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/ts-node/-/ts-node-8.3.0.tgz";
        sha1 = "e4059618411371924a1fb5f3b125915f324efb57";
      };
    }
    {
      name = "tslib-1.9.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/tslib/-/tslib-1.9.3.tgz";
        sha1 = "d7e4dd79245d85428c4d7e4822a79917954ca286";
      };
    }
    {
      name = "tslib-1.10.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/tslib/-/tslib-1.10.0.tgz";
        sha1 = "c3c19f95973fb0a62973fb09d90d961ee43e5c8a";
      };
    }
    {
      name = "tslint-etc-1.5.6.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/tslint-etc/-/tslint-etc-1.5.6.tgz";
        sha1 = "dcc8ecce95b75c897889a472ee5a470380787054";
      };
    }
    {
      name = "tslint-sonarts-1.9.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/tslint-sonarts/-/tslint-sonarts-1.9.0.tgz";
        sha1 = "feb593e92db328c0328b430b838adbe65d504de9";
      };
    }
    {
      name = "tslint-5.18.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/tslint/-/tslint-5.18.0.tgz";
        sha1 = "f61a6ddcf372344ac5e41708095bbf043a147ac6";
      };
    }
    {
      name = "tsutils-etc-1.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/tsutils-etc/-/tsutils-etc-1.1.0.tgz";
        sha1 = "82ce1c92da29e07d3cde95692d5c5e8dbdc92fd0";
      };
    }
    {
      name = "tsutils-2.29.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/tsutils/-/tsutils-2.29.0.tgz";
        sha1 = "32b488501467acbedd4b85498673a0812aca0b99";
      };
    }
    {
      name = "tsutils-3.10.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/tsutils/-/tsutils-3.10.0.tgz";
        sha1 = "6f1c95c94606e098592b0dff06590cf9659227d6";
      };
    }
    {
      name = "tty-browserify-0.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/tty-browserify/-/tty-browserify-0.0.0.tgz";
        sha1 = "a157ba402da24e9bf957f9aa69d524eed42901a6";
      };
    }
    {
      name = "tunnel-agent-0.6.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/tunnel-agent/-/tunnel-agent-0.6.0.tgz";
        sha1 = "27a5dea06b36b04a0a9966774b290868f0fc40fd";
      };
    }
    {
      name = "tweetnacl-0.14.5.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/tweetnacl/-/tweetnacl-0.14.5.tgz";
        sha1 = "5ae68177f192d4456269d108afa93ff8743f4f64";
      };
    }
    {
      name = "type-check-0.3.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/type-check/-/type-check-0.3.2.tgz";
        sha1 = "5884cab512cf1d355e3fb784f30804b2b520db72";
      };
    }
    {
      name = "type-fest-0.3.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/type-fest/-/type-fest-0.3.1.tgz";
        sha1 = "63d00d204e059474fe5e1b7c011112bbd1dc29e1";
      };
    }
    {
      name = "type-fest-0.5.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/type-fest/-/type-fest-0.5.2.tgz";
        sha1 = "d6ef42a0356c6cd45f49485c3b6281fc148e48a2";
      };
    }
    {
      name = "typedarray-0.0.6.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/typedarray/-/typedarray-0.0.6.tgz";
        sha1 = "867ac74e3864187b1d3d47d996a78ec5c8830777";
      };
    }
    {
      name = "typescript-3.5.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/typescript/-/typescript-3.5.3.tgz";
        sha1 = "c830f657f93f1ea846819e929092f5fe5983e977";
      };
    }
    {
      name = "typical-4.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/typical/-/typical-4.0.0.tgz";
        sha1 = "cbeaff3b9d7ae1e2bbfaf5a4e6f11eccfde94fc4";
      };
    }
    {
      name = "uglify-es-3.3.9.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/uglify-es/-/uglify-es-3.3.9.tgz";
        sha1 = "0c1c4f0700bed8dbc124cdb304d2592ca203e677";
      };
    }
    {
      name = "uglify-js-3.5.10.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/uglify-js/-/uglify-js-3.5.10.tgz";
        sha1 = "652bef39f86d9dbfd6674407ee05a5e2d372cf2d";
      };
    }
    {
      name = "uglify-js-3.5.12.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/uglify-js/-/uglify-js-3.5.12.tgz";
        sha1 = "6b759cabc08c3e91fe82323d6387019f0c5864cd";
      };
    }
    {
      name = "uglifyjs-webpack-plugin-2.1.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/uglifyjs-webpack-plugin/-/uglifyjs-webpack-plugin-2.1.3.tgz";
        sha1 = "b00a18d1acda271deb755c99ba0d93568156eb76";
      };
    }
    {
      name = "underscore-1.6.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/underscore/-/underscore-1.6.0.tgz";
        sha1 = "8b38b10cacdef63337b8b24e4ff86d45aea529a8";
      };
    }
    {
      name = "union-value-1.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/union-value/-/union-value-1.0.0.tgz";
        sha1 = "5c71c34cb5bad5dcebe3ea0cd08207ba5aa1aea4";
      };
    }
    {
      name = "unique-filename-1.1.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/unique-filename/-/unique-filename-1.1.1.tgz";
        sha1 = "1d69769369ada0583103a1e6ae87681b56573230";
      };
    }
    {
      name = "unique-slug-2.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/unique-slug/-/unique-slug-2.0.1.tgz";
        sha1 = "5e9edc6d1ce8fb264db18a507ef9bd8544451ca6";
      };
    }
    {
      name = "unique-string-1.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/unique-string/-/unique-string-1.0.0.tgz";
        sha1 = "9e1057cca851abb93398f8b33ae187b99caec11a";
      };
    }
    {
      name = "universalify-0.1.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/universalify/-/universalify-0.1.2.tgz";
        sha1 = "b646f69be3942dabcecc9d6639c80dc105efaa66";
      };
    }
    {
      name = "unpipe-1.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/unpipe/-/unpipe-1.0.0.tgz";
        sha1 = "b2bf4ee8514aae6165b4817829d21b2ef49904ec";
      };
    }
    {
      name = "unset-value-1.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/unset-value/-/unset-value-1.0.0.tgz";
        sha1 = "8376873f7d2335179ffb1e6fc3a8ed0dfc8ab559";
      };
    }
    {
      name = "unzip-response-1.0.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/unzip-response/-/unzip-response-1.0.2.tgz";
        sha1 = "b984f0877fc0a89c2c773cc1ef7b5b232b5b06fe";
      };
    }
    {
      name = "unzip-response-2.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/unzip-response/-/unzip-response-2.0.1.tgz";
        sha1 = "d2f0f737d16b0615e72a6935ed04214572d56f97";
      };
    }
    {
      name = "upath-1.1.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/upath/-/upath-1.1.2.tgz";
        sha1 = "3db658600edaeeccbe6db5e684d67ee8c2acd068";
      };
    }
    {
      name = "upath-1.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/upath/-/upath-1.1.0.tgz";
        sha1 = "35256597e46a581db4793d0ce47fa9aebfc9fabd";
      };
    }
    {
      name = "update-notifier-3.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/update-notifier/-/update-notifier-3.0.1.tgz";
        sha1 = "78ecb68b915e2fd1be9f767f6e298ce87b736250";
      };
    }
    {
      name = "update-notifier-2.5.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/update-notifier/-/update-notifier-2.5.0.tgz";
        sha1 = "d0744593e13f161e406acb1d9408b72cad08aff6";
      };
    }
    {
      name = "uri-js-4.2.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/uri-js/-/uri-js-4.2.2.tgz";
        sha1 = "94c540e1ff772956e2299507c010aea6c8838eb0";
      };
    }
    {
      name = "urix-0.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/urix/-/urix-0.1.0.tgz";
        sha1 = "da937f7a62e21fec1fd18d49b35c2935067a6c72";
      };
    }
    {
      name = "url-parse-lax-1.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/url-parse-lax/-/url-parse-lax-1.0.0.tgz";
        sha1 = "7af8f303645e9bd79a272e7a14ac68bc0609da73";
      };
    }
    {
      name = "url-parse-lax-3.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/url-parse-lax/-/url-parse-lax-3.0.0.tgz";
        sha1 = "16b5cafc07dbe3676c1b1999177823d6503acb0c";
      };
    }
    {
      name = "url-0.11.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/url/-/url-0.11.0.tgz";
        sha1 = "3838e97cfc60521eb73c525a8e55bfdd9e2e28f1";
      };
    }
    {
      name = "use-2.0.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/use/-/use-2.0.2.tgz";
        sha1 = "ae28a0d72f93bf22422a18a2e379993112dec8e8";
      };
    }
    {
      name = "user-home-2.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/user-home/-/user-home-2.0.0.tgz";
        sha1 = "9c70bfd8169bc1dcbf48604e0f04b8b49cde9e9f";
      };
    }
    {
      name = "util-deprecate-1.0.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/util-deprecate/-/util-deprecate-1.0.2.tgz";
        sha1 = "450d4dc9fa70de732762fbd2d4a28981419a0ccf";
      };
    }
    {
      name = "util.promisify-1.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/util.promisify/-/util.promisify-1.0.0.tgz";
        sha1 = "440f7165a459c9a16dc145eb8e72f35687097030";
      };
    }
    {
      name = "util-0.10.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/util/-/util-0.10.3.tgz";
        sha1 = "7afb1afe50805246489e3db7fe0ed379336ac0f9";
      };
    }
    {
      name = "util-0.10.4.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/util/-/util-0.10.4.tgz";
        sha1 = "3aa0125bfe668a4672de58857d3ace27ecb76901";
      };
    }
    {
      name = "util-0.11.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/util/-/util-0.11.1.tgz";
        sha1 = "3236733720ec64bb27f6e26f421aaa2e1b588d61";
      };
    }
    {
      name = "uuid-3.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/uuid/-/uuid-3.1.0.tgz";
        sha1 = "3dd3d3e790abc24d7b0d3a034ffababe28ebbc04";
      };
    }
    {
      name = "uuid-3.3.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/uuid/-/uuid-3.3.2.tgz";
        sha1 = "1b4af4955eb3077c501c23872fc6513811587131";
      };
    }
    {
      name = "v8-compile-cache-2.0.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/v8-compile-cache/-/v8-compile-cache-2.0.3.tgz";
        sha1 = "00f7494d2ae2b688cfe2899df6ed2c54bef91dbe";
      };
    }
    {
      name = "validate-npm-package-license-3.0.4.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/validate-npm-package-license/-/validate-npm-package-license-3.0.4.tgz";
        sha1 = "fc91f6b9c7ba15c857f4cb2c5defeec39d4f410a";
      };
    }
    {
      name = "verror-1.10.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/verror/-/verror-1.10.0.tgz";
        sha1 = "3a105ca17053af55d6e270c1f8288682e18da400";
      };
    }
    {
      name = "vm-browserify-0.0.4.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/vm-browserify/-/vm-browserify-0.0.4.tgz";
        sha1 = "5d7ea45bbef9e4a6ff65f95438e0a87c357d5a73";
      };
    }
    {
      name = "vscode-languageserver-types-3.14.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/vscode-languageserver-types/-/vscode-languageserver-types-3.14.0.tgz";
        sha1 = "d3b5952246d30e5241592b6dde8280e03942e743";
      };
    }
    {
      name = "w3c-hr-time-1.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/w3c-hr-time/-/w3c-hr-time-1.0.1.tgz";
        sha1 = "82ac2bff63d950ea9e3189a58a65625fedf19045";
      };
    }
    {
      name = "walker-1.0.7.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/walker/-/walker-1.0.7.tgz";
        sha1 = "2f7f9b8fd10d677262b18a884e28d19618e028fb";
      };
    }
    {
      name = "watchpack-1.6.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/watchpack/-/watchpack-1.6.0.tgz";
        sha1 = "4bc12c2ebe8aa277a71f1d3f14d685c7b446cd00";
      };
    }
    {
      name = "wcwidth-1.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/wcwidth/-/wcwidth-1.0.1.tgz";
        sha1 = "f0b0dcf915bc5ff1528afadb2c0e17b532da2fe8";
      };
    }
    {
      name = "web-ext-types-3.2.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/web-ext-types/-/web-ext-types-3.2.1.tgz";
        sha1 = "3edc0e3c2e8fe121d7d7e4ca0b7ee0c883cea832";
      };
    }
    {
      name = "web-ext-3.1.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/web-ext/-/web-ext-3.1.1.tgz";
        sha1 = "457f81cd68fe36e4a0025693aac911dcf9b658a8";
      };
    }
    {
      name = "webidl-conversions-4.0.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/webidl-conversions/-/webidl-conversions-4.0.2.tgz";
        sha1 = "a855980b1f0b6b359ba1d5d9fb39ae941faa63ad";
      };
    }
    {
      name = "webpack-cli-3.3.6.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/webpack-cli/-/webpack-cli-3.3.6.tgz";
        sha1 = "2c8c399a2642133f8d736a359007a052e060032c";
      };
    }
    {
      name = "webpack-log-1.2.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/webpack-log/-/webpack-log-1.2.0.tgz";
        sha1 = "a4b34cda6b22b518dbb0ab32e567962d5c72a43d";
      };
    }
    {
      name = "webpack-log-2.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/webpack-log/-/webpack-log-2.0.0.tgz";
        sha1 = "5b7928e0637593f119d32f6227c1e0ac31e1b47f";
      };
    }
    {
      name = "webpack-sources-1.3.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/webpack-sources/-/webpack-sources-1.3.0.tgz";
        sha1 = "2a28dcb9f1f45fe960d8f1493252b5ee6530fa85";
      };
    }
    {
      name = "webpack-4.37.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/webpack/-/webpack-4.37.0.tgz";
        sha1 = "3508ef10f7996612c2be6026076d89760f776f54";
      };
    }
    {
      name = "whatwg-encoding-1.0.5.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/whatwg-encoding/-/whatwg-encoding-1.0.5.tgz";
        sha1 = "5abacf777c32166a51d085d6b4f3e7d27113ddb0";
      };
    }
    {
      name = "whatwg-mimetype-2.3.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/whatwg-mimetype/-/whatwg-mimetype-2.3.0.tgz";
        sha1 = "3d4b1e0312d2079879f826aff18dbeeca5960fbf";
      };
    }
    {
      name = "whatwg-url-7.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/whatwg-url/-/whatwg-url-7.0.0.tgz";
        sha1 = "fde926fa54a599f3adf82dff25a9f7be02dc6edd";
      };
    }
    {
      name = "whatwg-url-6.5.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/whatwg-url/-/whatwg-url-6.5.0.tgz";
        sha1 = "f2df02bff176fd65070df74ad5ccbb5a199965a8";
      };
    }
    {
      name = "when-3.7.7.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/when/-/when-3.7.7.tgz";
        sha1 = "aba03fc3bb736d6c88b091d013d8a8e590d84718";
      };
    }
    {
      name = "which-module-2.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/which-module/-/which-module-2.0.0.tgz";
        sha1 = "d9ef07dce77b9902b8a3a8fa4b31c3e3f7e6e87a";
      };
    }
    {
      name = "which-1.2.4.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/which/-/which-1.2.4.tgz";
        sha1 = "1557f96080604e5b11b3599eb9f45b50a9efd722";
      };
    }
    {
      name = "which-1.3.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/which/-/which-1.3.1.tgz";
        sha1 = "a45043d54f5805316da8d62f9f50918d3da70b0a";
      };
    }
    {
      name = "wide-align-1.1.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/wide-align/-/wide-align-1.1.3.tgz";
        sha1 = "ae074e6bdc0c14a431e804e624549c633b000457";
      };
    }
    {
      name = "widest-line-2.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/widest-line/-/widest-line-2.0.1.tgz";
        sha1 = "7438764730ec7ef4381ce4df82fb98a53142a3fc";
      };
    }
    {
      name = "window-size-0.1.4.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/window-size/-/window-size-0.1.4.tgz";
        sha1 = "f8e1aa1ee5a53ec5bf151ffa09742a6ad7697876";
      };
    }
    {
      name = "windows-release-3.2.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/windows-release/-/windows-release-3.2.0.tgz";
        sha1 = "8122dad5afc303d833422380680a79cdfa91785f";
      };
    }
    {
      name = "winreg-0.0.12.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/winreg/-/winreg-0.0.12.tgz";
        sha1 = "07105554ba1a9d08979251d129475bffae3006b7";
      };
    }
    {
      name = "wordwrap-0.0.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/wordwrap/-/wordwrap-0.0.3.tgz";
        sha1 = "a3d5da6cd5c0bc0008d37234bbaf1bed63059107";
      };
    }
    {
      name = "wordwrap-1.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/wordwrap/-/wordwrap-1.0.0.tgz";
        sha1 = "27584810891456a4171c8d0226441ade90cbcaeb";
      };
    }
    {
      name = "worker-farm-1.7.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/worker-farm/-/worker-farm-1.7.0.tgz";
        sha1 = "26a94c5391bbca926152002f69b84a4bf772e5a8";
      };
    }
    {
      name = "wrap-ansi-2.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/wrap-ansi/-/wrap-ansi-2.1.0.tgz";
        sha1 = "d8fc3d284dd05794fe84973caecdd1cf824fdd85";
      };
    }
    {
      name = "wrap-ansi-5.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/wrap-ansi/-/wrap-ansi-5.1.0.tgz";
        sha1 = "1fd1f67235d5b6d0fee781056001bfb694c03b09";
      };
    }
    {
      name = "wrappy-1.0.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/wrappy/-/wrappy-1.0.2.tgz";
        sha1 = "b5243d8f3ec1aa35f1364605bc0d1036e30ab69f";
      };
    }
    {
      name = "write-file-atomic-2.4.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/write-file-atomic/-/write-file-atomic-2.4.1.tgz";
        sha1 = "d0b05463c188ae804396fd5ab2a370062af87529";
      };
    }
    {
      name = "write-1.0.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/write/-/write-1.0.3.tgz";
        sha1 = "0800e14523b923a387e415123c865616aae0f5c3";
      };
    }
    {
      name = "write-0.2.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/write/-/write-0.2.1.tgz";
        sha1 = "5fc03828e264cea3fe91455476f7a3c566cb0757";
      };
    }
    {
      name = "ws-5.2.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/ws/-/ws-5.2.2.tgz";
        sha1 = "dffef14866b8e8dc9133582514d1befaf96e980f";
      };
    }
    {
      name = "xdg-basedir-3.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/xdg-basedir/-/xdg-basedir-3.0.0.tgz";
        sha1 = "496b2cc109eca8dbacfe2dc72b603c17c5870ad4";
      };
    }
    {
      name = "xml-name-validator-3.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/xml-name-validator/-/xml-name-validator-3.0.0.tgz";
        sha1 = "6ae73e06de4d8c6e47f9fb181f78d648ad457c6a";
      };
    }
    {
      name = "xml2js-0.4.19.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/xml2js/-/xml2js-0.4.19.tgz";
        sha1 = "686c20f213209e94abf0d1bcf1efaa291c7827a7";
      };
    }
    {
      name = "xmlbuilder-9.0.7.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/xmlbuilder/-/xmlbuilder-9.0.7.tgz";
        sha1 = "132ee63d2ec5565c557e20f4c22df9aca686b10d";
      };
    }
    {
      name = "xregexp-2.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/xregexp/-/xregexp-2.0.0.tgz";
        sha1 = "52a63e56ca0b84a7f3a5f3d61872f126ad7a5943";
      };
    }
    {
      name = "xregexp-4.2.4.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/xregexp/-/xregexp-4.2.4.tgz";
        sha1 = "02a4aea056d65a42632c02f0233eab8e4d7e57ed";
      };
    }
    {
      name = "xtend-4.0.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/xtend/-/xtend-4.0.1.tgz";
        sha1 = "a5c6d532be656e23db820efb943a1f04998d63af";
      };
    }
    {
      name = "y18n-3.2.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/y18n/-/y18n-3.2.1.tgz";
        sha1 = "6d15fba884c08679c0d77e88e7759e811e07fa41";
      };
    }
    {
      name = "y18n-4.0.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/y18n/-/y18n-4.0.0.tgz";
        sha1 = "95ef94f85ecc81d007c264e190a120f0a3c8566b";
      };
    }
    {
      name = "yallist-2.1.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/yallist/-/yallist-2.1.2.tgz";
        sha1 = "1c11f9218f076089a47dd512f93c6699a6a81d52";
      };
    }
    {
      name = "yallist-3.0.3.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/yallist/-/yallist-3.0.3.tgz";
        sha1 = "b4b049e314be545e3ce802236d6cd22cd91c3de9";
      };
    }
    {
      name = "yargs-parser-10.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/yargs-parser/-/yargs-parser-10.1.0.tgz";
        sha1 = "7202265b89f7e9e9f2e5765e0fe735a905edbaa8";
      };
    }
    {
      name = "yargs-parser-11.1.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/yargs-parser/-/yargs-parser-11.1.1.tgz";
        sha1 = "879a0865973bca9f6bab5cbdf3b1c67ec7d3bcf4";
      };
    }
    {
      name = "yargs-parser-13.1.1.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/yargs-parser/-/yargs-parser-13.1.1.tgz";
        sha1 = "d26058532aa06d365fe091f6a1fc06b2f7e5eca0";
      };
    }
    {
      name = "yargs-13.2.4.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/yargs/-/yargs-13.2.4.tgz";
        sha1 = "0b562b794016eb9651b98bd37acf364aa5d6dc83";
      };
    }
    {
      name = "yargs-12.0.5.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/yargs/-/yargs-12.0.5.tgz";
        sha1 = "05f5997b609647b64f66b81e3b4b10a368e7ad13";
      };
    }
    {
      name = "yargs-3.32.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/yargs/-/yargs-3.32.0.tgz";
        sha1 = "03088e9ebf9e756b69751611d2a5ef591482c995";
      };
    }
    {
      name = "yauzl-2.10.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/yauzl/-/yauzl-2.10.0.tgz";
        sha1 = "c7eb17c93e112cb1086fa6d8e51fb0667b79a5f9";
      };
    }
    {
      name = "yn-3.1.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/yn/-/yn-3.1.0.tgz";
        sha1 = "fcbe2db63610361afcc5eb9e0ac91e976d046114";
      };
    }
    {
      name = "zip-dir-1.0.2.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/zip-dir/-/zip-dir-1.0.2.tgz";
        sha1 = "253f907aead62a21acd8721d8b88032b2411c051";
      };
    }
    {
      name = "zip-stream-1.2.0.tgz";
      path = fetchurl {
        url = "https://registry.yarnpkg.com/zip-stream/-/zip-stream-1.2.0.tgz";
        sha1 = "a8bc45f4c1b49699c6b90198baacaacdbcd4ba04";
      };
    }
  ];
}

