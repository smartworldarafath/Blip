package com.google.accompanist.permissions;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PreviewPermissionState implements PermissionState {
    public final PermissionStatus a;

    public PreviewPermissionState(String str, PermissionStatus permissionStatus) {
        permissionStatus.getClass();
        this.a = permissionStatus;
    }

    @Override // com.google.accompanist.permissions.PermissionState
    public final PermissionStatus a() {
        return this.a;
    }

    @Override // com.google.accompanist.permissions.PermissionState
    public final void b() {
    }
}
