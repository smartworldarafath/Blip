.class final Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory$CompositeMessageInfoFactory;
    }
.end annotation


# static fields
.field public static final b:Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory$1;


# instance fields
.field public final a:Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory$CompositeMessageInfoFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory$1;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->b:Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory$1;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    new-instance v0, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory$CompositeMessageInfoFactory;

    .line 2
    .line 3
    sget-object v1, Landroidx/datastore/preferences/protobuf/Protobuf;->c:Landroidx/datastore/preferences/protobuf/Protobuf;

    .line 4
    .line 5
    :try_start_0
    const-string v1, "androidx.datastore.preferences.protobuf.DescriptorMessageInfoFactory"

    .line 6
    .line 7
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "getInstance"

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1, v3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Landroidx/datastore/preferences/protobuf/MessageInfoFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    sget-object v1, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->b:Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory$1;

    .line 26
    .line 27
    :goto_0
    const/4 v2, 0x2

    .line 28
    new-array v2, v2, [Landroidx/datastore/preferences/protobuf/MessageInfoFactory;

    .line 29
    .line 30
    sget-object v3, Landroidx/datastore/preferences/protobuf/GeneratedMessageInfoFactory;->a:Landroidx/datastore/preferences/protobuf/GeneratedMessageInfoFactory;

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    aput-object v3, v2, v4

    .line 34
    .line 35
    const/4 v3, 0x1

    .line 36
    aput-object v1, v2, v3

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v2, v0, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory$CompositeMessageInfoFactory;->a:[Landroidx/datastore/preferences/protobuf/MessageInfoFactory;

    .line 42
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    .line 45
    .line 46
    sget-object v1, Landroidx/datastore/preferences/protobuf/Internal;->a:Ljava/nio/charset/Charset;

    .line 47
    .line 48
    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory;->a:Landroidx/datastore/preferences/protobuf/ManifestSchemaFactory$CompositeMessageInfoFactory;

    .line 49
    .line 50
    return-void
.end method
