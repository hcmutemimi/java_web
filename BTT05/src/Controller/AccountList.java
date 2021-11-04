package Controller;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import Model.accountModel;
import Utilities.Common;

public class AccountList {
	public static accountModel acc = new accountModel(Common.USERNAME, Common.PASSWORD);
	public static List<accountModel> listAccount = new ArrayList<accountModel>(Arrays.asList(acc));
	
	public static List<accountModel> getListAccount() {
		return listAccount;
	}
	public static void setListAccount(List<accountModel> listAccount) {
		AccountList.listAccount = listAccount;
	}
	

}
