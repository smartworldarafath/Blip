.class public final Lcom/google/android/gms/common/api/ApiMetadata$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/ApiMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public a:Lcom/google/android/gms/common/api/ComplianceOptions;

.field public b:Z

.field public c:Z


# virtual methods
.method public final a()Lcom/google/android/gms/common/api/ApiMetadata;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/ApiMetadata;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/common/api/ApiMetadata$Builder;->a:Lcom/google/android/gms/common/api/ComplianceOptions;

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/google/android/gms/common/api/ApiMetadata$Builder;->b:Z

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/ApiMetadata;-><init>(Lcom/google/android/gms/common/api/ComplianceOptions;Z)V

    .line 8
    .line 9
    .line 10
    iget-boolean p0, p0, Lcom/google/android/gms/common/api/ApiMetadata$Builder;->c:Z

    .line 11
    .line 12
    iput-boolean p0, v0, Lcom/google/android/gms/common/api/ApiMetadata;->l:Z

    .line 13
    .line 14
    return-object v0
.end method
