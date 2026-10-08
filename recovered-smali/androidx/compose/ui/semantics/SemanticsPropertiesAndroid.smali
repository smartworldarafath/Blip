.class public abstract Landroidx/compose/ui/semantics/SemanticsPropertiesAndroid;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final b:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final c:Landroidx/compose/ui/semantics/SemanticsPropertyKey;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 2
    .line 3
    new-instance v1, Lcf;

    .line 4
    .line 5
    const/16 v2, 0xb

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v1, v2, v3}, Lcf;-><init>(IB)V

    .line 9
    .line 10
    .line 11
    const-string v2, "TestTagsAsResourceId"

    .line 12
    .line 13
    invoke-direct {v0, v2, v3, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Landroidx/compose/ui/semantics/SemanticsPropertiesAndroid;->a:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 17
    .line 18
    new-instance v0, Lcf;

    .line 19
    .line 20
    const/16 v1, 0xc

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-direct {v0, v1, v2}, Lcf;-><init>(IB)V

    .line 24
    .line 25
    .line 26
    new-instance v1, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    const-string v4, "AccessibilityClassName"

    .line 30
    .line 31
    invoke-direct {v1, v4, v2, v0}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V

    .line 32
    .line 33
    .line 34
    sput-object v1, Landroidx/compose/ui/semantics/SemanticsPropertiesAndroid;->b:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 35
    .line 36
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 37
    .line 38
    new-instance v1, Lcf;

    .line 39
    .line 40
    const/16 v2, 0xd

    .line 41
    .line 42
    const/4 v4, 0x0

    .line 43
    invoke-direct {v1, v2, v4}, Lcf;-><init>(IB)V

    .line 44
    .line 45
    .line 46
    const-string v2, "CredentialRequest"

    .line 47
    .line 48
    invoke-direct {v0, v2, v3, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V

    .line 49
    .line 50
    .line 51
    sput-object v0, Landroidx/compose/ui/semantics/SemanticsPropertiesAndroid;->c:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 52
    .line 53
    return-void
.end method
