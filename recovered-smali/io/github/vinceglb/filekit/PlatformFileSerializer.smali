.class public final Lio/github/vinceglb/filekit/PlatformFileSerializer;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/KSerializer<",
        "Lio/github/vinceglb/filekit/PlatformFile;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lio/github/vinceglb/filekit/PlatformFileSerializer;

.field public static final b:Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/github/vinceglb/filekit/PlatformFileSerializer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/github/vinceglb/filekit/PlatformFileSerializer;->a:Lio/github/vinceglb/filekit/PlatformFileSerializer;

    .line 7
    .line 8
    const-string v0, "io.github.vinceglb.filekit.PlatformFile"

    .line 9
    .line 10
    invoke-static {v0}, Lkotlinx/serialization/descriptors/SerialDescriptorsKt;->a(Ljava/lang/String;)Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lio/github/vinceglb/filekit/PlatformFileSerializer;->b:Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-interface {p1}, Lkotlinx/serialization/encoding/Decoder;->o()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lio/github/vinceglb/filekit/PlatformFile_androidKt;->b(Ljava/lang/String;)Lio/github/vinceglb/filekit/PlatformFile;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final b(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lio/github/vinceglb/filekit/PlatformFile;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Lio/github/vinceglb/filekit/PlatformFile_androidKt;->c(Lio/github/vinceglb/filekit/PlatformFile;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-interface {p1, p0}, Lkotlinx/serialization/encoding/Encoder;->o(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final c()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    .line 1
    sget-object p0, Lio/github/vinceglb/filekit/PlatformFileSerializer;->b:Lkotlinx/serialization/internal/PrimitiveSerialDescriptor;

    .line 2
    .line 3
    return-object p0
.end method
