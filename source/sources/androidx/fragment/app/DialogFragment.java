package androidx.fragment.app;

import android.content.DialogInterface;
import android.util.Log;
import androidx.compose.foundation.text.KeyModifiers;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.fragment.app.FragmentTransaction;
import defpackage.q;
import defpackage.u2;
import java.io.PrintWriter;
import java.util.ArrayList;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class DialogFragment extends Fragment implements DialogInterface.OnCancelListener, DialogInterface.OnDismissListener {
    public final DialogInterface.OnDismissListener s;
    public int t;
    public boolean u;
    public boolean v;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: androidx.fragment.app.DialogFragment$4, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass4 {
    }

    public DialogFragment() {
        new Runnable() { // from class: androidx.fragment.app.DialogFragment.1
            @Override // java.lang.Runnable
            public final void run() {
                ((AnonymousClass3) DialogFragment.this.s).onDismiss(null);
            }
        };
        this.s = new AnonymousClass3();
        this.t = -1;
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        String str;
        if (!this.u) {
            if (FragmentManager.g(3)) {
                Log.d("FragmentManager", "onDismiss called for DialogFragment " + this);
            }
            if (!this.v) {
                this.v = true;
                this.u = true;
                if (this.t >= 0) {
                    FragmentManager h = h();
                    int i = this.t;
                    if (i >= 0) {
                        h.e(true);
                        this.t = -1;
                        return;
                    } else {
                        u2.g(q.g(i, "Bad id: "));
                        return;
                    }
                }
                BackStackRecord backStackRecord = new BackStackRecord(h());
                FragmentTransaction.Op op = new FragmentTransaction.Op(3, this);
                backStackRecord.a.add(op);
                op.c = 0;
                op.d = 0;
                op.e = 0;
                op.f = 0;
                if (!backStackRecord.c) {
                    if (FragmentManager.g(2)) {
                        Log.v("FragmentManager", "Commit: " + backStackRecord);
                        PrintWriter printWriter = new PrintWriter(new LogWriter());
                        ArrayList arrayList = backStackRecord.a;
                        printWriter.print("  ");
                        printWriter.print("mName=");
                        printWriter.print((String) null);
                        printWriter.print(" mIndex=");
                        printWriter.print(backStackRecord.d);
                        printWriter.print(" mCommitted=");
                        printWriter.println(backStackRecord.c);
                        if (!arrayList.isEmpty()) {
                            printWriter.print("  ");
                            printWriter.println("Operations:");
                            int size = arrayList.size();
                            for (int i2 = 0; i2 < size; i2++) {
                                FragmentTransaction.Op op2 = (FragmentTransaction.Op) arrayList.get(i2);
                                switch (op2.a) {
                                    case 0:
                                        str = "NULL";
                                        break;
                                    case 1:
                                        str = "ADD";
                                        break;
                                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                                        str = "REPLACE";
                                        break;
                                    case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                                        str = "REMOVE";
                                        break;
                                    case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                                        str = "HIDE";
                                        break;
                                    case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                                        str = "SHOW";
                                        break;
                                    case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                                        str = "DETACH";
                                        break;
                                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                                        str = "ATTACH";
                                        break;
                                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                                        str = "SET_PRIMARY_NAV";
                                        break;
                                    case KeyModifiers.a /* 9 */:
                                        str = "UNSET_PRIMARY_NAV";
                                        break;
                                    case KeyModifiers.b /* 10 */:
                                        str = "OP_SET_MAX_LIFECYCLE";
                                        break;
                                    default:
                                        str = "cmd=" + op2.a;
                                        break;
                                }
                                printWriter.print("  ");
                                printWriter.print("  Op #");
                                printWriter.print(i2);
                                printWriter.print(": ");
                                printWriter.print(str);
                                printWriter.print(" ");
                                printWriter.println(op2.b);
                                if (op2.c != 0 || op2.d != 0) {
                                    printWriter.print("  ");
                                    printWriter.print("enterAnim=#");
                                    printWriter.print(Integer.toHexString(op2.c));
                                    printWriter.print(" exitAnim=#");
                                    printWriter.println(Integer.toHexString(op2.d));
                                }
                                if (op2.e != 0 || op2.f != 0) {
                                    printWriter.print("  ");
                                    printWriter.print("popEnterAnim=#");
                                    printWriter.print(Integer.toHexString(op2.e));
                                    printWriter.print(" popExitAnim=#");
                                    printWriter.println(Integer.toHexString(op2.f));
                                }
                            }
                        }
                        printWriter.close();
                    }
                    backStackRecord.c = true;
                    backStackRecord.d = -1;
                    backStackRecord.b.e(true);
                    return;
                }
                u2.l("commit already called");
            }
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: androidx.fragment.app.DialogFragment$3, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass3 implements DialogInterface.OnDismissListener {
        public AnonymousClass3() {
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public final void onDismiss(DialogInterface dialogInterface) {
        }
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
    }
}
