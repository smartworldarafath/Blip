package com.google.android.material.textfield;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
class CustomEndIconDelegate extends EndIconDelegate {
    @Override // com.google.android.material.textfield.EndIconDelegate
    public final void a() {
        TextInputLayout textInputLayout = this.a;
        textInputLayout.setEndIconOnClickListener(null);
        textInputLayout.setEndIconOnLongClickListener(null);
    }
}
