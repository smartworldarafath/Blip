.class public final Lcom/google/accompanist/permissions/PreviewPermissionState;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lcom/google/accompanist/permissions/PermissionState;


# instance fields
.field public final a:Lcom/google/accompanist/permissions/PermissionStatus;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/accompanist/permissions/PermissionStatus;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p2, p0, Lcom/google/accompanist/permissions/PreviewPermissionState;->a:Lcom/google/accompanist/permissions/PermissionStatus;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/accompanist/permissions/PermissionStatus;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/accompanist/permissions/PreviewPermissionState;->a:Lcom/google/accompanist/permissions/PermissionStatus;

    .line 2
    .line 3
    return-object p0
.end method

.method public final b()V
    .locals 0

    .line 1
    return-void
.end method
