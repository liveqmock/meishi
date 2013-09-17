package com.bestaone.meishi.core.security.captcha;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Random;

import javax.imageio.ImageIO;

/**
 * 图片验证码的一个实现,生成随机字符串
 * @author 张国圣
 */
public class ImageCaptcha implements Captcha {

	private static final long serialVersionUID = 4225802751501222689L;

	private Boolean hasChallengeBeenCalled = Boolean.FALSE;
	protected String question;
	protected transient BufferedImage challenge;

	private int width = 60;
	private int height = 25;
	private int length = 4;
	private String text = "abcdefghijklnopqrstuvwxyz";
	private Color bgColor = new Color(0xff, 0xff, 0xff);
	private Color borderColor = new Color(0xCC, 0xCC, 0xCC);
	private Color imgColor = new Color(0xe8, 0x8c, 0x13);//#e88c13
	private Font font = new Font("Verdana", Font.PLAIN, 18);

	protected ImageCaptcha() {
		char[] chars = text.toCharArray();
		BufferedImage image = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
		Graphics g = image.getGraphics();
		g.setColor(bgColor);
		g.fillRect(0, 0, width, height);

		g.setColor(borderColor);
		g.drawRect(0, 0, width - 1, height - 1);

		StringBuilder sb = new StringBuilder();
		
		g.setColor(imgColor);
		g.setFont(font);
		int cahrWidth = (width-5)/length;
		for (int i = 0; i < length; i++) {
			String c = String.valueOf(chars[new Random().nextInt(chars.length)]);
			g.drawString(c, 5+cahrWidth*i, 18);
			sb.append(c);
		}
		String randString = sb.toString();


		// 随机产生干扰点，使图象中的认证码不易被其它程序探测到
		Random random = new Random();
		for (int i = 0; i < 5; i++) {
			int x = random.nextInt(width);
			int y = random.nextInt(height);
			int x1 = random.nextInt(width);
			int y1 = random.nextInt(height);
			g.drawLine(x, y, x+x1, y+y1);
		}
		g.dispose();

		this.challenge = image;
		this.question = randString;
	}

	protected ImageCaptcha(String question, BufferedImage challenge) {
		this.challenge = challenge;
		this.question = question;
	}

	@Override
	public final String getQuestion() {
		return question;
	}

	@Override
	public final Object getChallenge() {
		return getImageChallenge();
	}

	public final BufferedImage getImageChallenge() {
		hasChallengeBeenCalled = Boolean.TRUE;
		return challenge;
	}

	@Override
	public final void disposeChallenge() {
		this.challenge = null;
	}

	@Override
	public Boolean hasGetChalengeBeenCalled() {
		return hasChallengeBeenCalled;
	}

	/**
	 * 将图片写出到流中
	 * @param out
	 * @throws IOException
	 */
	public void writeObject(OutputStream out) throws IOException {
		if (this.challenge != null) {
			ImageIO.write(challenge, "JPG", out);
			out.flush();
		}
	}

	/**
	 * 读取流中的数据
	 * @param in
	 * @throws IOException
	 */
	public void readObject(InputStream in) throws IOException {
		this.challenge = ImageIO.read(in);
	}

	@Override
	public Boolean validateResponse(Object response) {
		return (null != response && response instanceof String) ? validateResponse((String) response) : Boolean.FALSE;
	}

	private final Boolean validateResponse(final String response) {
		return new Boolean(response.equals(this.question));
	}
}
