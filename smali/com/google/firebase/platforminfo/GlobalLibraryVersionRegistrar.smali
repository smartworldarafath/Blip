.class public Lcom/google/firebase/platforminfo/GlobalLibraryVersionRegistrar;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static volatile b:Lcom/google/firebase/platforminfo/GlobalLibraryVersionRegistrar;


# instance fields
.field public final a:Ljava/util/HashSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/firebase/platforminfo/GlobalLibraryVersionRegistrar;->a:Ljava/util/HashSet;

    .line 10
    .line 11
    return-void
.end method
