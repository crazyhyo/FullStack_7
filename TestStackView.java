package coingameIO;

import java.util.Scanner;
import java.util.Stack;

public class TestStackView {
	static Stack<View> viewStack = new Stack<View>();
	static Scanner sc = new Scanner(System.in);
	
	public TestStackView() {
		viewStack = new Stack<View>();
		sc = new Scanner(System.in);
	}
	
	public void start() {
		View view = View.MAIN;
		viewStack.push(view);
		while(!viewStack.empty()) {
			System.out.println(view.name());
			switch(view) {
			case MAIN: view = main(); break;
			case TRADE: view = trade();break;
			case BUY: view = buy(); break;
			case SELL: view = sell(); break;
			case ACCOUNT: view = account(); break;
			case BUY_BITCOIN: view = buyBitcoin(); break;
			case BUY_RIPPLE: view = buyRipple(); break;
			case BUY_DOGECOIN: view = buyDogecoin(); break;
			case SELL_BITCOIN: view = sellBitcoin(); break;
			case SELL_RIPPLE: view = sellRipple(); break;
			case SELL_DOGECOIN: view = sellDogecoin(); break;
			case CHART: view = chart(); break;
			case CHART_BITCOIN: view = chartBitcoin(); break;
			case CHART_RIPPLE: view = chartRipple(); break;
			case CHART_DOGECOIN: view = chartDogecoin(); break;
			case CHART_NEWS: view = chartNews(); break;
			}
			
		}
	}
	public static void main(String[] args) {
		new TestStackView().start();
	}
	
	public int printChoices(String...choices) {
		String str = "";
		for(int i = 1; i <= choices.length; i++) {
			str += i + "." + choices[i-1] + "\t";
		}
		str += (choices.length + 1) + ".돌아가기";
		
		System.out.println(str);
		
		return choices.length + 1;
	}
	
	public View back() {
		viewStack.pop();
		return viewStack.peek();
	}
	
	public View main() {
		int len = printChoices("매매", "잔고", "차트", "다음날");
		int input = sc.nextInt();
		View view = View.MAIN;
		switch(input) {
		case 1: view = View.TRADE; viewStack.push(view); break;
		case 2: view = View.ACCOUNT; viewStack.push(view); break;
		case 3: view = View.CHART; viewStack.push(view); break;
		case 4: view = View.MAIN; viewStack.push(view); break;
		case 5: view = back(); break;
		}
		return view;
	}
	
	public View trade() {
		int len = printChoices("매수", "매도");
		int input = sc.nextInt();
		View view = View.TRADE;
		switch(input) {
		case 1: view = View.BUY; viewStack.push(view); break;
		case 2: view = View.SELL; viewStack.push(view); break;
		case 3: view = back(); break;
		}
		return view;
	}
	
	public View buy() {
		int len = printChoices("비트코인", "리플", "도지코인");
		int input = sc.nextInt();
		View view = View.BUY;
		switch(input) {
		case 1: view = View.BUY_BITCOIN; viewStack.push(view); break;
		case 2: view = View.BUY_RIPPLE; viewStack.push(view); break;
		case 3: view = View.BUY_DOGECOIN; viewStack.push(view); break;
		case 4: view = back(); break;
		}
		return view;
	}
	public View sell() {
		int len = printChoices("비트코인", "리플", "도지코인");
		int input = sc.nextInt();
		View view = View.SELL;
		switch(input) {
		case 1: view = View.SELL_BITCOIN; viewStack.push(view); break;
		case 2: view = View.SELL_RIPPLE; viewStack.push(view); break;
		case 3: view = View.SELL_DOGECOIN; viewStack.push(view); break;
		case 4: view = back(); break;
		}
		return view;
	}
	public View buyBitcoin() {
		printChoices();
		int input = sc.nextInt();
		View view = View.BUY_BITCOIN;
		switch(input) {
		case 1: view = back(); break;
		}
		return view;
	}
	public View buyRipple() {
		printChoices();
		int input = sc.nextInt();
		View view = View.BUY_RIPPLE;
		switch(input) {
		case 1: view = back(); break;
		}
		return view;
	}
	public View buyDogecoin() {
		printChoices();
		int input = sc.nextInt();
		View view = View.BUY_DOGECOIN;
		switch(input) {
		case 1: view = back(); break;
		}
		return view;
	}
	public View sellBitcoin() {
		printChoices();
		int input = sc.nextInt();
		View view = View.SELL_BITCOIN;
		switch(input) {
		case 1: view = back(); break;
		}
		return view;
	}
	public View sellRipple() {
		printChoices();
		int input = sc.nextInt();
		View view = View.SELL_RIPPLE;
		switch(input) {
		case 1: view = back(); break;
		}
		return view;
	}
	public View sellDogecoin() {
		printChoices();
		int input = sc.nextInt();
		View view = View.SELL_DOGECOIN;
		switch(input) {
		case 1: view = back(); break;
		}
		return view;
	}
	public View account() {
		printChoices();
		int input = sc.nextInt();
		View view = View.ACCOUNT;
		switch(input) {
		case 1: view = back(); break;
		}
		return view;
	}
	public View chart() {
		printChoices("비트코인", "리플", "도지코인", "뉴스보기");
		int input = sc.nextInt();
		View view = View.CHART;
		switch(input) {
		case 1: view = View.CHART_BITCOIN; viewStack.push(view); break;
		case 2: view = View.CHART_RIPPLE; viewStack.push(view); break;
		case 3: view = View.CHART_DOGECOIN; viewStack.push(view); break;
		case 4: view = View.CHART_NEWS; viewStack.push(view); break;
		case 5: view = back(); break;
		}
		return view;
	}
	public View chartBitcoin() {
		printChoices();
		int input = sc.nextInt();
		View view = View.CHART_BITCOIN;
		switch(input) {
		case 1: view = back(); break;
		}
		return view;
	}
	public View chartRipple() {
		printChoices();
		int input = sc.nextInt();
		View view = View.CHART_RIPPLE;
		switch(input) {
		case 1: view = back(); break;
		}
		return view;
	}
	public View chartDogecoin() {
		printChoices();
		int input = sc.nextInt();
		View view = View.CHART_DOGECOIN;
		switch(input) {
		case 1: view = back(); break;
		}
		return view;
	}
	public View chartNews() {
		printChoices();
		int input = sc.nextInt();
		View view = View.CHART_NEWS;
		switch(input) {
		case 1: view = back(); break;
		}
		return view;
	}
}
