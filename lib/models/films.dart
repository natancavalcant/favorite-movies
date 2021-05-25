import 'package:favoritemovies/core/app_images.dart';

class Films {
  final String name;
  final String assetImage;
  final String categorie;
  final String description;
  bool favorite;

  Films(
      {required this.name,
      required this.assetImage,
      required this.categorie,
      required this.description,
      this.favorite = false});

  static List<Films> getFilms() {
    return <Films>[
      Films(
        name: "Liga da justiça",
        assetImage: AppImages.movieBanner,
        categorie: "ação",
        description:
            "Determinado a garantir que o sacrifício final do Superman não foi em vão, Bruce Wayne alinha forças com Diana Prince com planos de recrutar uma equipe de metahumanos para proteger o mundo de uma ameaça de proporções catastróficas que se aproxima.",
        favorite: true,
      ),
      Films(
        name: "Liga da justiça",
        assetImage: AppImages.movieBanner,
        categorie: "ação",
        description:
            "Determinado a garantir que o sacrifício final do Superman não foi em vão, Bruce Wayne alinha forças com Diana Prince com planos de recrutar uma equipe de metahumanos para proteger o mundo de uma ameaça de proporções catastróficas que se aproxima.",
        favorite: true,
      ),
      Films(
          name: "Liga da justiça",
          assetImage: AppImages.movieBanner,
          categorie: "ação",
          description:
              "Determinado a garantir que o sacrifício final do Superman não foi em vão, Bruce Wayne alinha forças com Diana Prince com planos de recrutar uma equipe de metahumanos para proteger o mundo de uma ameaça de proporções catastróficas que se aproxima."),
      Films(
          name: "Liga da justiça",
          assetImage: AppImages.movieBanner,
          categorie: "ação",
          description:
              "Determinado a garantir que o sacrifício final do Superman não foi em vão, Bruce Wayne alinha forças com Diana Prince com planos de recrutar uma equipe de metahumanos para proteger o mundo de uma ameaça de proporções catastróficas que se aproxima."),
      Films(
          name: "Liga da justiça",
          assetImage: AppImages.movieBanner,
          categorie: "ação",
          description:
              "Determinado a garantir que o sacrifício final do Superman não foi em vão, Bruce Wayne alinha forças com Diana Prince com planos de recrutar uma equipe de metahumanos para proteger o mundo de uma ameaça de proporções catastróficas que se aproxima."),
      Films(
          name: "Liga da justiça",
          assetImage: AppImages.movieBanner,
          categorie: "ação",
          description:
              "Determinado a garantir que o sacrifício final do Superman não foi em vão, Bruce Wayne alinha forças com Diana Prince com planos de recrutar uma equipe de metahumanos para proteger o mundo de uma ameaça de proporções catastróficas que se aproxima."),
      Films(
          name: "Liga da justiça",
          assetImage: AppImages.movieBanner,
          categorie: "ação",
          description:
              "Determinado a garantir que o sacrifício final do Superman não foi em vão, Bruce Wayne alinha forças com Diana Prince com planos de recrutar uma equipe de metahumanos para proteger o mundo de uma ameaça de proporções catastróficas que se aproxima."),
      Films(
          name: "Liga da justiça",
          assetImage: AppImages.movieBanner,
          categorie: "ação",
          description:
              "Determinado a garantir que o sacrifício final do Superman não foi em vão, Bruce Wayne alinha forças com Diana Prince com planos de recrutar uma equipe de metahumanos para proteger o mundo de uma ameaça de proporções catastróficas que se aproxima."),
      Films(
          name: "Liga da justiça",
          assetImage: AppImages.movieBanner,
          categorie: "ação",
          description:
              "Determinado a garantir que o sacrifício final do Superman não foi em vão, Bruce Wayne alinha forças com Diana Prince com planos de recrutar uma equipe de metahumanos para proteger o mundo de uma ameaça de proporções catastróficas que se aproxima."),
      Films(
          name: "Liga da justiça",
          assetImage: AppImages.movieBanner,
          categorie: "ação",
          description:
              "Determinado a garantir que o sacrifício final do Superman não foi em vão, Bruce Wayne alinha forças com Diana Prince com planos de recrutar uma equipe de metahumanos para proteger o mundo de uma ameaça de proporções catastróficas que se aproxima."),
    ];
  }
}
