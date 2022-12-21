#include <etc2compp/etc2compp.hpp>

#define STB_IMAGE_STATIC
#define STB_IMAGE_IMPLEMENTATION
#include <stb/stb_image.h>

#define STB_IMAGE_WRITE_STATIC
#define STB_IMAGE_WRITE_IMPLEMENTATION
#include <stb/stb_image_write.h>

void showetc2comp() {
    int w, h, comp;
    const uint8_t* img = stbi_load("data/wall_paper.jpg", &w, &h, &comp, 4);

    std::vector<float> rgbaf;

    for (int i = 0; i != w * h * 4; i += 4) {
        rgbaf.push_back(img[i + 0] / 255.0f);
        rgbaf.push_back(img[i + 1] / 255.0f);
        rgbaf.push_back(img[i + 2] / 255.0f);
        rgbaf.push_back(img[i + 3] / 255.0f);
    }

    const auto etcFormat = Etc::Image::Format::RGB8;
    const auto errorMetric = Etc::ErrorMetric::BT709;

    Etc::Image image(rgbaf.data(), w, h, errorMetric);

    image.Encode(etcFormat, errorMetric, ETCCOMP_DEFAULT_EFFORT_LEVEL, std::thread::hardware_concurrency(), 1024);

    Etc::File etcFile(
        "image.ktx",
        Etc::File::Format::KTX,
        etcFormat,
        image.GetEncodingBits(),
        image.GetEncodingBitsBytes(),
        image.GetSourceWidth(),
        image.GetSourceHeight(),
        image.GetExtendedWidth(),
        image.GetExtendedHeight());
    etcFile.Write();

    exit(EXIT_SUCCESS);
}
