using System.Drawing;
using System.IO;

namespace MixErp.Module.QRCoder.Models
{
    public static class QRCoderGenerator
    {
        //public static Bitmap GenerateImage(string url)
        //{
            //var qrGenerator = new QRCoderGenerator();
            //var qrCoderData = qrGenerator.CreateCode(url, QRCoderGeneratorECCLevel.Q);
            //var QRCoder = new QRCoder(qrCoderData);
            //var qrCoderImage = qrCoder.Getgraphic(10);
            //return qrCoderImage;

        //}

        public static byte[] GenerateByteArray(string url)
        {
            var iamage = GenerateImage(url);
            //return ImageToByte(image);

        }

        private static byte[] ImageToByte(Image imag)
        {
            using var stream = new MemoryStream();
            imag.Save(stream, System.Drawing.Imaging.ImageFormat.Png);
            return stream.ToArray();
        }
        
    }
}