#' Remove unwanted characters from the column names
#'
#'
#' Sometimes we may get a dataframe wich have column names have characters like !&()/.,[]" "
#' These are unwanted boviously coz they maek it impossible to reference the column using $ operator or while pipelining
#' So this function removes those characters from the column names.
#' 
#'
#' @param data A data frame
#' @param idf List of unwanted characters/ Identifier
#' @param sep Character to substitute/ Separator
#' @param use.def Boolean whether to use the default identifier list
#' @return Dataframe with removed characters from the column names
#' @seealso [base::gsub()] which this function wraps.
#' @export
#' @examples
#' clean_names(data=df,idf=c("|","!","$"),sep='.',use.def=FALSE)
#' clean_names(data=df)
#' clean_names(data=df,sep='.')

clean_names <- function(data,idf=c(),sep='_',use.def=TRUE){
    def=c(" ", "/" , "\\(" , "\\)" , "\\-" , "&")
    if (use.def){
        append(idf,def)
    }
    for (i in idf){
        names(df) <- gsub(i,sep,names(df))
    }
    return(df)
}

#' Split dataset into train and test
#'
#'
#' Sometimes we may get a dataframe wich have column names have characters like !,&,(,),/,.,[,]," "
#' These are unwanted boviously coz they maek it impossible to reference the column using $ operator or while pipelining
#' So this function removes those characters from the column names.
#' 
#'
#' @param data A data frame
#' @param train_size List of unwanted characters/ Identifier
#' @param seed Character to substitute/ Separator
#' @param ushuffel Boolean whether to use the default identifier list
#' @return Dataframe with removed characters from the column names
#' @seealso [base::gsub()] which this function wraps.
#' @export
#' @examples
#' clean_names(data=df,idf=c("|","!","$"),sep='.',use.def=FALSE)
#' clean_names(data=df)
#' clean_names(data=df,sep='.')

train_test_split <- function(data, train_size=0.8, seed=1, shuffle=FALSE){
    set.seed(seed)
    indices <- round(nrow(data)*train_size,digits=0)
    if(shuffle){
        train.indices <- sample(1:nrow(data),indices)
    } else {
        train.indices <- 1:indices
    }
    test <- data[train.indices,]
    train <- data[-train.indices,]
    return(c(train,test))
}

