package com.google.android.gms.common;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.content.DialogInterface;
import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class ErrorDialogFragment extends DialogFragment {
    public Dialog j;
    public DialogInterface.OnCancelListener k;
    public AlertDialog l;

    @Override // android.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        DialogInterface.OnCancelListener onCancelListener = this.k;
        if (onCancelListener != null) {
            onCancelListener.onCancel(dialogInterface);
        }
    }

    @Override // android.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        Dialog dialog = this.j;
        if (dialog == null) {
            setShowsDialog(false);
            if (this.l == null) {
                Activity activity = getActivity();
                Preconditions.e(activity);
                this.l = new AlertDialog.Builder(activity).create();
            }
            return this.l;
        }
        return dialog;
    }
}
