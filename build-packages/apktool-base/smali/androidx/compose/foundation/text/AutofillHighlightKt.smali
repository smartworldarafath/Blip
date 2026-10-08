.class public abstract Landroidx/compose/foundation/text/AutofillHighlightKt;
.super Ljava/lang/Object;
.source "r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3"


# static fields
.field public static final a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

.field public static final b:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ln;

    .line 2
    .line 3
    const/16 v1, 0xe

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ln;-><init>(I)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Landroidx/compose/foundation/text/AutofillHighlightKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 14
    .line 15
    new-instance v0, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 16
    .line 17
    sget-object v1, Landroidx/compose/foundation/text/AutofillHighlightKt$LocalAutofillHighlightColor$1;->j:Landroidx/compose/foundation/text/AutofillHighlightKt$LocalAutofillHighlightColor$1;

    .line 18
    .line 19
    invoke-direct {v0, v1}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Landroidx/compose/foundation/text/AutofillHighlightKt;->b:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    .line 23
    .line 24
    return-void
.end method
