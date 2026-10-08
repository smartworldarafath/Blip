.class final Lkotlinx/serialization/json/JsonObjectSerializer$JsonObjectDescriptor;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"

# interfaces
.implements Lkotlinx/serialization/descriptors/SerialDescriptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/serialization/json/JsonObjectSerializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "JsonObjectDescriptor"
.end annotation


# static fields
.field public static final b:Lkotlinx/serialization/json/JsonObjectSerializer$JsonObjectDescriptor;

.field public static final c:Ljava/lang/String;


# instance fields
.field public final synthetic a:Lkotlinx/serialization/internal/LinkedHashMapClassDesc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lkotlinx/serialization/json/JsonObjectSerializer$JsonObjectDescriptor;

    .line 2
    .line 3
    invoke-direct {v0}, Lkotlinx/serialization/json/JsonObjectSerializer$JsonObjectDescriptor;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lkotlinx/serialization/json/JsonObjectSerializer$JsonObjectDescriptor;->b:Lkotlinx/serialization/json/JsonObjectSerializer$JsonObjectDescriptor;

    .line 7
    .line 8
    const-string v0, "kotlinx.serialization.json.JsonObject"

    .line 9
    .line 10
    sput-object v0, Lkotlinx/serialization/json/JsonObjectSerializer$JsonObjectDescriptor;->c:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->a:Lkotlinx/serialization/internal/StringSerializer;

    .line 5
    .line 6
    sget-object v0, Lkotlinx/serialization/json/JsonElementSerializer;->a:Lkotlinx/serialization/json/JsonElementSerializer;

    .line 7
    .line 8
    new-instance v0, Lkotlinx/serialization/internal/LinkedHashMapSerializer;

    .line 9
    .line 10
    invoke-direct {v0}, Lkotlinx/serialization/internal/LinkedHashMapSerializer;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v0, v0, Lkotlinx/serialization/internal/LinkedHashMapSerializer;->a:Lkotlinx/serialization/internal/LinkedHashMapClassDesc;

    .line 14
    .line 15
    iput-object v0, p0, Lkotlinx/serialization/json/JsonObjectSerializer$JsonObjectDescriptor;->a:Lkotlinx/serialization/internal/LinkedHashMapClassDesc;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    .line 1
    sget-object p0, Lkotlinx/serialization/json/JsonObjectSerializer$JsonObjectDescriptor;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final c()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlinx/serialization/json/JsonObjectSerializer$JsonObjectDescriptor;->a:Lkotlinx/serialization/internal/LinkedHashMapClassDesc;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return p0
.end method

.method public final d(Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lkotlinx/serialization/json/JsonObjectSerializer$JsonObjectDescriptor;->a:Lkotlinx/serialization/internal/LinkedHashMapClassDesc;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/MapLikeDescriptor;->d(Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public final e()Lkotlinx/serialization/descriptors/SerialKind;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlinx/serialization/json/JsonObjectSerializer$JsonObjectDescriptor;->a:Lkotlinx/serialization/internal/LinkedHashMapClassDesc;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlinx/serialization/descriptors/StructureKind$MAP;->a:Lkotlinx/serialization/descriptors/StructureKind$MAP;

    .line 7
    .line 8
    return-object p0
.end method

.method public final f()I
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlinx/serialization/json/JsonObjectSerializer$JsonObjectDescriptor;->a:Lkotlinx/serialization/internal/LinkedHashMapClassDesc;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x2

    .line 7
    return p0
.end method

.method public final g(I)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlinx/serialization/json/JsonObjectSerializer$JsonObjectDescriptor;->a:Lkotlinx/serialization/internal/LinkedHashMapClassDesc;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public final getAnnotations()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlinx/serialization/json/JsonObjectSerializer$JsonObjectDescriptor;->a:Lkotlinx/serialization/internal/LinkedHashMapClassDesc;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlin/collections/EmptyList;->j:Lkotlin/collections/EmptyList;

    .line 7
    .line 8
    return-object p0
.end method

.method public final h()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlinx/serialization/json/JsonObjectSerializer$JsonObjectDescriptor;->a:Lkotlinx/serialization/internal/LinkedHashMapClassDesc;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return p0
.end method

.method public final i(I)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlinx/serialization/json/JsonObjectSerializer$JsonObjectDescriptor;->a:Lkotlinx/serialization/internal/LinkedHashMapClassDesc;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/MapLikeDescriptor;->i(I)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlin/collections/EmptyList;->j:Lkotlin/collections/EmptyList;

    .line 7
    .line 8
    return-object p0
.end method

.method public final j(I)Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlinx/serialization/json/JsonObjectSerializer$JsonObjectDescriptor;->a:Lkotlinx/serialization/internal/LinkedHashMapClassDesc;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/MapLikeDescriptor;->j(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public final k(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlinx/serialization/json/JsonObjectSerializer$JsonObjectDescriptor;->a:Lkotlinx/serialization/internal/LinkedHashMapClassDesc;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lkotlinx/serialization/internal/MapLikeDescriptor;->k(I)Z

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return p0
.end method
