.class public abstract Lkotlinx/serialization/json/Json;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/serialization/json/Json$Default;
    }
.end annotation


# static fields
.field public static final d:Lkotlinx/serialization/json/Json$Default;


# instance fields
.field public final a:Lkotlinx/serialization/json/JsonConfiguration;

.field public final b:Lkotlinx/serialization/modules/SerializersModule;

.field public final c:Lkotlinx/serialization/json/internal/DescriptorSchemaCache;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lkotlinx/serialization/json/Json$Default;

    .line 2
    .line 3
    new-instance v1, Lkotlinx/serialization/json/JsonConfiguration;

    .line 4
    .line 5
    invoke-direct {v1}, Lkotlinx/serialization/json/JsonConfiguration;-><init>()V

    .line 6
    .line 7
    .line 8
    sget-object v2, Lkotlinx/serialization/modules/SerializersModuleKt;->a:Lkotlinx/serialization/modules/SerialModuleImpl;

    .line 9
    .line 10
    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/json/Json;-><init>(Lkotlinx/serialization/json/JsonConfiguration;Lkotlinx/serialization/modules/SerializersModule;)V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lkotlinx/serialization/json/Json;->d:Lkotlinx/serialization/json/Json$Default;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Lkotlinx/serialization/json/JsonConfiguration;Lkotlinx/serialization/modules/SerializersModule;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkotlinx/serialization/json/Json;->a:Lkotlinx/serialization/json/JsonConfiguration;

    .line 5
    .line 6
    iput-object p2, p0, Lkotlinx/serialization/json/Json;->b:Lkotlinx/serialization/modules/SerializersModule;

    .line 7
    .line 8
    new-instance p1, Lkotlinx/serialization/json/internal/DescriptorSchemaCache;

    .line 9
    .line 10
    invoke-direct {p1}, Lkotlinx/serialization/json/internal/DescriptorSchemaCache;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lkotlinx/serialization/json/Json;->c:Lkotlinx/serialization/json/internal/DescriptorSchemaCache;

    .line 14
    .line 15
    return-void
.end method
