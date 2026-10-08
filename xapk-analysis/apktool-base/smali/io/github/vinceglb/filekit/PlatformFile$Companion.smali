.class public final Lio/github/vinceglb/filekit/PlatformFile$Companion;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/vinceglb/filekit/PlatformFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# virtual methods
.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lio/github/vinceglb/filekit/PlatformFile;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object p0, Lio/github/vinceglb/filekit/PlatformFileSerializer;->a:Lio/github/vinceglb/filekit/PlatformFileSerializer;

    .line 2
    .line 3
    return-object p0
.end method
